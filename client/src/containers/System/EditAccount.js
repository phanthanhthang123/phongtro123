import React, { useState } from "react";
import { InputReadOnly, InputFormV2,Button } from "../../components";
import anonAvatar from '../../assets/img/anonAvatar2.jpg'
import { useSelector,useDispatch } from "react-redux";
import {apiUpdateUser } from "../../services";
import { filetoBase64,blobToBase64 } from "../../ultils/toBase64";
import { getCurrent } from "../../store/actions";
import Swal from "sweetalert2";

const EditAccount = () => {
  const dispatch = useDispatch();
  const [invalidFields, setInvalidFields] = useState([]);
  const {currentData} = useSelector(state => state.user);
  const [payload,setPayload] = useState({
      name : currentData?.name || '',
      avatar : currentData?.avatar ? blobToBase64(currentData?.avatar ) :  anonAvatar,
      fbUrl : currentData?.fbUrl || '',
      zalo : currentData?.zalo || ''
  })
  const handleSubmit = async ()=>{
      const response = await apiUpdateUser(payload)
      if(response?.data.err === 0 ){
            Swal.fire('Done','Cập nhật thông tin cá nhân thành công','success').then(()=>{
                  dispatch(getCurrent());
            })
      }else{
            Swal.fire('Oops!','Cập nhật thông tin cá nhân thành công','error')
      }
  }
  const handleUploadFile = async (e)=>{
      const imageBase64 = await filetoBase64(e.target.files[0]);
      // console.log(imageBase64)
      setPayload(prev => ({
            ...prev,
            avatar : imageBase64
      }))
  }
  return (
    <div className="px-6 flex flex-col items-center">
      <h1 className="text-3xl w-full text-start font-medium border-b border-b-gray-200 py-4">
        Chỉnh sửa thông tin cá nhân
      </h1>
      <div className="w-3/5 flex items-center justify-center">
            <div className="w-full py-6 flex flex-col gap-4">
              <InputReadOnly label="Mã thành viên" value={`#${currentData?.id?.match(/\d+/g)?.join("")?.slice(0, 6)}` || ''}/>
              <InputReadOnly editPhone label="Số điện thoại" value={currentData?.phone}/>
              <div className="flex flex-col gap-4">
                <InputFormV2
                  name='name'
                  setValue={setPayload}
                  invalidFields={invalidFields}
                  setInvalidFields={setInvalidFields}
                  isRow='flex-row'
                  label="Tên hiển thị"
                  value={payload.name}
                />
                <InputFormV2
                  name='zalo'
                  setValue={setPayload}
                  invalidFields={invalidFields}
                  setInvalidFields={setInvalidFields}
                  isRow='flex-row'
                  label="Zalo"
                  value={payload.zalo || ''}
                />
                <InputFormV2
                  name='fbUrl'
                  setValue={setPayload}
                  invalidFields={invalidFields}
                  setInvalidFields={setInvalidFields}
                  isRow='flex-row'
                  label="Facebook"
                  value={payload.fbUrl || ''}
                />
                <div className="flex">
                  <label className="w-48 flex-none font-medium" htmlFor="password">Mật khẩu</label>
                  <small className="flex-auto text-blue-500 cursor-pointer text-base h-12">Đổi mật khẩu</small>
                </div>
                <div className="flex mb-6">
                  <label className="w-48 flex-none font-medium" htmlFor="avatar">Ảnh đại diện</label>
                  <div>
                        <img src={payload.avatar} alt="avatar" className="w-20 h-20 rounded-full object-cover"/>
                        <input onChange={handleUploadFile} type="file" id="avatar" className="appearance-none my-4"/>
                  </div>

                </div>
                <Button
                  text='Cập nhật'
                  bgColor='bg-blue-600'
                  textColor='text-white'
                  onClick={handleSubmit}
                />
              </div>
            </div>
      </div>
    </div>
  );
};

export default EditAccount;
