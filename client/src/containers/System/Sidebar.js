import React from "react";
import { useSelector } from "react-redux";
import anonAvatar from "../../assets/img/anonAvatar2.jpg";
import menuSidebar from "../../ultils/menuSidebar";
import { NavLink } from "react-router-dom";
import { useDispatch } from "react-redux";
import icons from "../../ultils/icons";
import * as action from '../../store/actions'

const activeStyle =
  "pb-2 hover:bg-gray-200 py-2 flex items-center font-bold bg-gray-300 gap-2 rounded-md my-1 cursor-pointer`";
const notActiveStyle =
  " pb-2 hover:bg-gray-200 py-2 flex items-center gap-2 rounded-md my-1 cursor-pointer`";

const {LuLogOut} = icons;

const Sidebar = () => {
  const { currentData } = useSelector((state) => state.user);
  const dispatch = useDispatch();

  return (
    <div className="w-[256px] bg-[#F5F5F5] h-full flex-none p-4 flex flex-col gap-6">
      <div className="flex flex-col gap-4">
        <div className="flex items-center gap-2">
          <img
            src={anonAvatar}
            alt="avatar"
            className="w-12 h-12 object-cover rounded-full shadow-md border-2 border-white"
          />
          <div className="flex flex-col justify-center ">
            <span className="font-semibold">{currentData?.name}</span>
            <small>{currentData?.phone}</small>
          </div>
        </div>
        <span>
          Mã thành viên:{" "}
          <span className="font-semibold">{`${currentData?.id
            ?.match(/\d+/g)
            ?.join("")
            ?.slice(0, 6)}`}</span>
        </span>
      </div>
      
      <div>
        {menuSidebar?.map((item, index) => {
          return (
            <NavLink
              className={({ isActive }) =>
                isActive ? activeStyle : notActiveStyle
              }
              key={index}
              to={item?.path}
            >
              {item?.icon}
              {item?.text}
            </NavLink>
          );
        })}
        <span className={`${notActiveStyle} cursor-pointer`} onClick={()=>dispatch(action.logout())}>
          <LuLogOut/>
          Thoát
        </span>
      </div>

    </div>
  );
};

export default Sidebar;
