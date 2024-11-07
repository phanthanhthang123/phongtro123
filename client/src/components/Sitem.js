import React from "react";
import moment from "moment";


const Sitem = ({title,price,image,createdAt}) => {

  const formatTime = (createdAt)=>{
    moment.locale('vn')
    return moment(createdAt).fromNow()
  }

  return (
    <div className="w-full flex items-center justify-between gap-2 border-b border-b-gray-400 py-2">
      <img
        className="w-[65px] h-[65px] object-cover rounded-md flex-none"
        src={image[0]}
        alt="ảnh-phòng-trọ"
      />
      <div className="flex-auto flex flex-col w-full justify-between gap-2 ">
        <h4 className="text-blue-600 font-bold text-[13px]">{`${title?.slice(0,40)}...`}</h4>
        <div className="flex justify-between w-full items-center">
          <span className="font-bold text-green-700 text-[12px]">{price}</span>
          <span className="text-gray-500 text-[12px] ">{formatTime(createdAt)}</span>
        </div>
      </div>
    </div>
  );
};

export default Sitem;
