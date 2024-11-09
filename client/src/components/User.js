import React from "react";
import { useSelector } from "react-redux";
import anonAvatar from '../assets/img/anonAvatar.jpg'

const User = () => {
  const { currentData } = useSelector((state) => state.user);
  return (
    <div className="flex items-center gap-2">
        <img src={currentData?.avatar || anonAvatar} alt="avatar" className="w-10 h-10 rounded-full object-cover border border-white shadow-md"/>
        <div className="flex flex-col gap-1  justify-center">
            <span>Xin chào, <span className=" w-20 font-semibold">{currentData?.name}</span> </span>
            <span className="flex justify-center">Mã tài khoản: <span className="w-20 whitespace-nowrap overflow-hidden text-ellipsis font-semibold">{currentData?.id}</span></span>
        </div>
    </div>
  )
};

export default User;
