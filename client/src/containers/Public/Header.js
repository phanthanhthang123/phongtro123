import React, { useCallback } from "react";
import logo from "../../assets/img/logo-phongtro.svg";
import { Button } from "../../components";
import icons from "../../ultils/icons";
import { useNavigate,Link } from "react-router-dom";
import { path } from "../../ultils/constant";

const { CiCirclePlus } = icons;

const Header = () => {
  const navigate = useNavigate();

  // const goLogin = useCallback((flag) => {
  //   navigate(path.LOGIN,{state: {flag}});
  // }, []);

  const goLogin = useCallback(()=>{
    navigate(path.LOGIN);
  })
  const goRegister = useCallback(()=>{
    navigate(path.REGISTER);
  })


  return (
    <div className="w-1100 ">
        <div className="w-full items-center flex justify-between">
          <Link to={path.HOME}>
            <img
              src={logo}
              alt="Logo"
              className="w-[240px] h-[70px] object-container"
            />
          </Link>
          <div className="flex items-center gab-1">
            <small>Phongtro123.com xin chào</small>
            <Button
              text={"Đăng nhập"}
              textColor="text-white"
              bgColor="bg-[#3961fb]"
              onClick={goLogin}
            />
            <Button
              text={"Đăng ký"}
              textColor="text-white"
              bgColor="bg-[#3961fb]"
              onClick={goRegister}
            />
            <Button
              text={"Đăng tin mới"}
              textColor="text-white"
              bgColor="bg-secondary2"
              IcAfter={CiCirclePlus}
            />
          </div>
        </div>
    </div>
  );
};
export default Header;
