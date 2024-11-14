import React,{useState,useEffect} from "react";
import {Overview,Address,Loading,Button} from '../../components'
import icons from "../../ultils/icons";
import { apiUploadImages } from "../../services";
import { getCodes,getCodesArea } from "../../ultils/CommonFunction/getCodes";

import { useSelector } from "react-redux";


const {ImCamera,ImBin } = icons;

const CreatePost = () => {
  const {prices,areas} = useSelector(state => state.app);
  

  const [isLoading, setIsLoading] = useState(false)
  const [payload, setPayload] = useState({
    categoryCode : '',
    title : '',
    priceNumber: '',
    areaNumber : '',
    images : '',
    address : '',
    priceCode: '',
    areaCode :' ',
    description: '',
    target : '',
    province:''
  })

  const [imagesPreview, setImagesPreview] = useState([])
  const handleFiles = async (e)=>{
      e.stopPropagation();
      setIsLoading(true)
      let images = [];
      let files = e.target.files;
      let formData = new FormData();
      for(let i of files){
        formData.append('file',i);
        formData.append('upload_preset',process.env.REACT_APP_UPLOAD_ASSETS_NAME);
        const response = await apiUploadImages(formData);
        if(response.status === 200) {
          images = [...images,response.data?.secure_url];
          setIsLoading(false);
        }else{
          images = [...images]
          setIsLoading(false);
        }
      }
      setImagesPreview(prev => [...prev,...images]);
      setPayload(prev => ({
        ...prev,
        images: ([...payload.images,...images])
      }))
    }
    
    const handleDeleteImage = (image)=>{
      setImagesPreview(prev => prev?.filter(item => item!==image));
      setPayload(prev => ({
        ...prev,
        images : prev.images?.filter(item => item !== image)
      }))
    }
    
    
  const handleSumbit = ()=>{      
    let priceCodeArr = getCodes(+payload.priceNumber,prices,1,15);
    let getPriceCode = priceCodeArr[priceCodeArr.length -1 ]?.code;

    let areaCodeArr = getCodesArea(+payload.areaNumber,areas,0,90);
    let getAreaCode = areaCodeArr[0]?.code;

    setPayload(prev => ({
      ...prev,
      priceCode : getPriceCode ? getPriceCode : '',
      areaCode : getAreaCode ? getAreaCode : ''
    }))
    console.log(payload)
  }

  return (
    <div className="px-6">
      <h1 className="text-3xl font-medium border-b border-b-gray-200 py-4">Đăng tin mới</h1>
      <div className="flex gap-4">
        <div className="py-4 border border-red-600 flex flex-col gap-8 flex-auto">
          <Address payload={payload} setPayload={setPayload}/>
          <Overview payload={payload} setPayload={setPayload}/>
          <div className='w-full mb-6'>
              <h2 className='font-semibold text-xl py-4'>Hình ảnh</h2>
              <small>Cập nhật hình ảnh rõ ràng sẽ cho thuê nhanh hơn</small>
              <div className="w-full">
                <label 
                  htmlFor="file" 
                  className="w-full flex flex-col justify-center items-center "
                >
                  {isLoading ? 
                  <div className="flex flex-col w-full items-center rounded-md h-[200px] my-4 Loading gap-1 justify-center border-gray-400 border-dashed border-2 bg-white cursor-pointer">
                    <Loading/>
                    Đang tải ảnh
                  </div> : 
                  <div className="flex flex-col w-full items-center rounded-md h-[200px] my-4 Loading gap-1 justify-center border-gray-400 border-dashed border-2 bg-white cursor-pointer">
                    <ImCamera color="blue" size={60}/>
                    Thêm ảnh
                  </div>}
                </label>
                <input onChange={handleFiles} id="file" type="file" multiple hidden/>
                {imagesPreview.length > 0 && 
                <div className="w-full">
                  <h3 className="font-medium py-4">Ảnh đã chọn</h3>
                  <div className="flex gap-4 items-center">
                    {imagesPreview?.map((item,index) => {
                      return (
                        <div key={index} className="relative">
                          <span title="Xóa" onClick={()=>handleDeleteImage(item)} className="absolute top-[-20px] right-[-20px] p-2 cursor-pointer bg-gray-100 hover:bg-gray-300 rounded-full">
                            <ImBin />
                          </span>
                          <img src={item} alt="preview" className="w-[120px] h-[120px] object-cover rounded-md"/>
                        </div>
                      )
                    })}
                  </div>
                </div>
                }
              </div>
          </div>
          <Button onClick={handleSumbit} text='Tạo mới' py='py-2' fontBold='font-bold' bgColor='bg-green-600' textColor='text-white' className='flex items-center justify-center' />
          <div className="h-[500px]">
          </div>
        </div>
        <div className="border border-red-600 w-1/3 flex-none py-4">
          map kk
        </div>
      </div>
    </div>
  );
};

export default CreatePost;
