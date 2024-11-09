import React, { useCallback,useEffect,useRef,useState } from "react";
import logo from "../../assets/img/logo-phongtro.svg";
import { Button } from "../../components";
import icons from "../../ultils/icons";
import { useNavigate, Link,useSearchParams} from "react-router-dom";
import { path } from "../../ultils/constant";
import { useSelector,useDispatch } from "react-redux";
import * as actions from "../../store/actions"
import { menuManage } from "../../ultils/menuManage";

const { CiCirclePlus,FaChevronDown,LuLogOut } = icons;

const Header = () => {
  const navigate = useNavigate();
  const dispatch = useDispatch();
  const headerRef = useRef();
  const [searchParams] = useSearchParams();
  const { isLoggedIn } = useSelector((state) => state.auth);
  const {currentData} = useSelector(state => state.user);
  // console.log(currentData)

  const [isShowMenu,setIsShowMenu] = useState(false)



  const goLogin = useCallback(() => {
    navigate(path.LOGIN);
  });
  const goRegister = useCallback(() => {
    navigate(path.REGISTER);
  });

  useEffect(()=>{
    headerRef.current.scrollIntoView({behavior: 'smooth',block : 'start'})
  },[searchParams.get('page')])

  const handleShowMenu = ()=>{
    setIsShowMenu(!isShowMenu)
  }

  return (
    <div ref={headerRef} className="w-3/5">
      <div className="w-full items-center flex justify-between">
        <Link to={path.HOME}>
          <img
            src={logo}
            alt="Logo"
            className="w-[240px] h-[70px] object-container"
          />
        </Link>
        <div className="flex items-center gab-1">
          {!isLoggedIn && <div className="flex items-center gab-1">
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
          </div> }
          {isLoggedIn && <div className="flex items-center gab-1 relative">
            <small>{currentData?.name}</small>
            <Button
              text={"Quản lý tài khoản"}
              textColor="text-white"
              bgColor="bg-blue-700"
              px = 'px-6'
              IcAfter={FaChevronDown}
              onClick={handleShowMenu}
            />
            {isShowMenu &&  <div className="absolute min-w-200 top-full bg-white shadow-md rounded-md py-2 px-4 right-0 flex flex-col ">
                {menuManage?.map((item,index) => {
                  return (
                    <Link
                    className="border-b border-b-gray-200 pb-2 hover:text-orange-500 text-blue-600 py-2 flex items-center gap-2"
                    to={item?.path} 
                    key={index}
                    >
                      {item?.icon}
                      {item?.text}
                    </Link>
                  )
                })}
                <span className="cursor-pointer py-2 hover:text-orange-500 text-blue-600 flex items-center gap-2" onClick={()=>{
                  dispatch(actions.logout())
                  setIsShowMenu(false)
                }}>
                  <LuLogOut/>
                  Đăng xuất
                </span>
            </div>}
          </div> }
          
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
