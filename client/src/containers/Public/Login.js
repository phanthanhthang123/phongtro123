import React from "react";
import { InputFrom, Button } from "../../components";
import { Link } from "react-router-dom";

const Login = () => {
  return (
    <div className="bg-white w-[600px] mt-4 p-[30px] pb-[100px] rounded-md shadow-sm">
      <h3 className="font-semibold text-2xl mb-3">Đăng nhập</h3>
      <div className="w-full flex flex-col gap-3">
        <InputFrom label={"SỐ ĐIỆN THOẠI"} />
        <InputFrom label={"MẬT KHẨU"} />
        <Button
          text="Đăng nhập"
          bgColor="bg-secondary1"
          textColor="text-white"
          fullWidth
          className="justify-center font-semibold"
        />
      </div>
      <div className="flex justify-between mt-7 text-base font-medium">
        <small className="text-[blue] hover:text-[orange] cursor-pointer">Bạn quên mật khẩu</small>
        <Link to="/register" className="text-[blue] hover:text-[orange] cursor-pointer">Tạo tài khoản mới</Link>
      </div>
    </div>
  );
};

export default Login;