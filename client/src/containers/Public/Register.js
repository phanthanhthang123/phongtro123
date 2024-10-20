import React, { useState } from "react";
import { InputFrom, Button } from "../../components";
import { Link } from "react-router-dom";
import { apiRegister } from "../../services/auth";
import * as actions from '../../store/actions'
import {useDispatch} from 'react-redux'

const Register = () => {
  const dispatch = useDispatch();

  const [payload,setPayload] = useState({
    phone : '',
    password: '',
    name : ''
  })

  const handleSumbit = async ()=>{
    // console.log(payload)
    // const response = await apiRegister(payload);
    // console.log(response);
    dispatch(actions.register(payload))
  }
  return (
    <div className="bg-white w-[600px] mt-4 p-[30px] pb-[100px] rounded-md shadow-sm">
      <h3 className="font-semibold text-2xl mb-3">Đăng ký tài khoản</h3>
      <div className="w-full flex flex-col gap-3">
        <InputFrom label={"HỌ VÀ TÊN"} value={payload.name} setValue={setPayload} type='name'/>
        <InputFrom label={"SỐ ĐIỆN THOẠI"} value={payload.phone} setValue={setPayload} type ='phone'/>
        <InputFrom label={"MẬT KHẨU"} value={payload.password} setValue={setPayload} type='password'/>
        <Button
          text="Đăng kí"
          bgColor="bg-secondary1"
          textColor="text-white"
          fullWidth
          className="justify-center font-semibold"
          onClick={handleSumbit}
        />
      </div>
      <div className="flex justify-between mt-7 text-base font-medium">
        <small>
          Bạn đã có tài khoản
          <Link to='/login' className="text-blue-500 hover:underline cursor-pointer">
            Đăng nhập ngay
          </Link>
        </small>
      </div>
    </div>
  );
};

export default Register;
