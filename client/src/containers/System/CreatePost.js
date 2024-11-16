import React,{useState,useEffect} from "react";
import {Overview,Address,Loading,Button} from '../../components'
import icons from "../../ultils/icons";
import { apiUploadImages } from "../../services";
import { getCodes,getCodesArea } from "../../ultils/CommonFunction/getCodes";
import { apiCreatePost,apiUpdatePost } from "../../services";
import Swal from 'sweetalert2'
import { useSelector } from "react-redux";
import { useDispatch } from "react-redux";
import { useNavigate } from "react-router-dom";
import * as action from '../../store/actions'

const {ImCamera,ImBin } = icons;

const CreatePost = ({isEdit=false,setIsEdit}) => {
  const dispatch = useDispatch();
  const {prices,areas , categories} = useSelector(state => state.app);
  const {currentData} = useSelector(state => state.user);
  const {dataEdit} = useSelector(state => state.post);
  const [isLoading, setIsLoading] = useState(false)
  const [statusAddress, setStatusAddress] = useState(false)

  const [payload, setPayload] = useState(()=>{
    let initData = isEdit ? {
      categoryCode:  dataEdit?.categoryCode,
      title:  dataEdit?.title,
      priceNumber: ( dataEdit?.priceNumber)*Math.pow(10,6),
      areaNumber :  dataEdit?.areaNumber ,
      images : dataEdit?.images?.image ? JSON.parse(dataEdit?.images?.image) : '',
      address :  dataEdit?.address ,
      priceCode:  dataEdit?.priceCode,
      areaCode : dataEdit?.areaCode ,
      description: dataEdit?.description ? JSON.parse(dataEdit?.description) : '',
      target :  dataEdit?.overviews?.target ,
      province: dataEdit?.province  
    } : {
      categoryCode : '',
      title : '',
      priceNumber : '',
      areaNumber : '',
      images : '',
      address : '',
      priceCode : '',
      areaCode : '',
      description : '',
      target : '',
      province : '',
    }
    return initData;
  })
  // console.log(dataEdit)

  const [imagesPreview, setImagesPreview] = useState(()=>{
      if(isEdit && dataEdit){
        let srcImages = dataEdit?.images?.image
        // console.log(srcImages)
        if(srcImages === ' "" ') return []
        else {
          srcImages = JSON.parse(srcImages) ?  JSON.parse(srcImages)?.filter(item => item !=='') : []
          if(srcImages?.length > 0){
            return srcImages
          }else{
            return []
          } 
        }
      }else{
        return []
      }
  })


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
      setImagesPreview(prev => {
        if(prev) return[...prev,...images]
        else return [...images]
      });
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
    
    
  const handleSumbit = async ()=>{      
    let priceCodeArr = getCodes(+payload.priceNumber/Math.pow(10,6),prices,1,15);
    let getPriceCode = priceCodeArr[priceCodeArr?.length -1 ]?.code;
    let areaCodeArr = getCodesArea(+payload.areaNumber,areas,0,90);
    let getAreaCode = areaCodeArr[0]?.code;

    const finalPayload = {
      ...payload,
      priceCode : getPriceCode ? getPriceCode : '',
      areaCode : getAreaCode ? getAreaCode : '',
      priceNumber : +payload.priceNumber/Math.pow(10,6),
      target : payload.target ? payload.target : 'Tất cả',
      userId : currentData?.id,
      label : `${categories?.find(item => item.code === payload?.categoryCode)?.value} ${payload?.address?.split(',')[0]}`
    }

    
    if(dataEdit) {
      // console.log(dataEdit)
      finalPayload.postId = dataEdit?.id;
      finalPayload.attributesId = dataEdit?.attributesId;
      finalPayload.imagesId = dataEdit?.imagesId;
      finalPayload.overviewId = dataEdit?.overviewId;
    }
    // console.log(dataEdit)
    // console.log(finalPayload)
    const response = isEdit ? await apiUpdatePost(finalPayload): await apiCreatePost(finalPayload);
    // console.log(response)
    // console.log(isEdit)
    if (+response?.data?.err === 0) {
      if (!isEdit) {
          Swal.fire('Thành công', 'Đã thêm bài đăng mới', 'success').then(() => {
              setPayload({
                  categoryCode: '',
                  title: '',
                  priceNumber: '',
                  areaNumber: '',
                  images: '',
                  address: '',
                  priceCode: '',
                  areaCode: ' ',
                  description: '',
                  target: '',
                  province: ''
              });
              setImagesPreview([]);
              setStatusAddress(true);
          });
      } else {
          Swal.fire('Thành công', 'Đã cập nhật bài đăng thành công', 'success').then(() => {
              setIsEdit(false);
              dispatch(action.getPostLimitAdmin());
          });
      }
    }else {
      if (!isEdit) {
          Swal.fire('Oops!', 'Có lỗi gì đó khi thêm bài mới', 'error');
      } else {
          Swal.fire('Oops!', 'Có lỗi gì đó khi cập nhật bài đăng', 'error');
      }
    }

  }

  return (
    <div className="px-6">
      <h1 className="text-3xl font-medium border-b border-b-gray-200 py-4">{isEdit ? 'Chỉnh sửa tin đăng' : 'Đăng tin mới'}</h1>
      <div className="flex gap-4">
        <div className="py-4 flex flex-col gap-8 flex-auto">
          <Address payload={payload} isEdit={isEdit} setPayload={setPayload} statusAddress={statusAddress} setStatusAddress={setStatusAddress}/>
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
                  <div className="flex flex-col w-full items-center rounded-md h-[200px] my-4  gap-1 justify-center border-gray-400 border-dashed border-2 bg-white cursor-pointer">
                    <Loading/>
                    Đang tải ảnh
                  </div> : 
                  <div className="flex flex-col w-full items-center rounded-md h-[200px] my-4 gap-1 justify-center border-gray-400 border-dashed border-2 bg-white cursor-pointer">
                    <ImCamera color="blue" size={60}/>
                    Thêm ảnh
                  </div>}
                </label>
                <input onChange={handleFiles} id="file" type="file" multiple hidden/>
                {imagesPreview?.length > 0 && 
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
          <Button underline='underline' onClick={handleSumbit} text ={isEdit ?'Cập nhật bài đăng':'Tạo mới bài đăng'} py='py-2' fontBold='font-bold' bgColor='bg-green-600' textColor='text-white' className='flex items-center justify-center' />
          <div className="h-[500px]">
          </div>
        </div>
        <div className="border border-red-600 w-1/3 flex-none py-4">
          Google map
          <div>
            Continue...
          </div>
          <Loading/>
        </div>
      </div>
    </div>
  );
};

export default CreatePost;
