import React from "react";
import { SearchItem } from "../../components";
import icons from "../../ultils/icons";

const {BsChevronRight,CiLocationOn,PiMoneyThin,FaCrop,FaHouse,IoSearchSharp} = icons;

const Search = () => {
  return(
    <div className="p-[10px] bg-[#FEBB02] rounded-lg lg:flex-row flex-col flex gap-2 items-center justify-around">
      <SearchItem IconBefore={<FaHouse/>} fontWeight IconAfter={<BsChevronRight color='rgb(156,163,175)'/>} text={"Phòng trọ,nhà trọ"} />
      <SearchItem IconBefore={<CiLocationOn/>} IconAfter={<BsChevronRight color='rgb(156,163,175)'/>} text={"Toàn quốc"}/>
      <SearchItem IconBefore={<PiMoneyThin/>} IconAfter={<BsChevronRight color='rgb(156,163,175)'/>} text={"Chọn giá"}/>
      <SearchItem IconBefore={<FaCrop/>} IconAfter={<BsChevronRight color='rgb(156,163,175)'/>} text={"Chọn diện tích"}/>
      <button
        type="button"
        className="outline-none py-2 px-4 w-full bg-secondary1 text-[13.3px] flex items-center justify-center gap-2 text-white rounded-lg overflow-hidden text-ellipsis whitespace-nowrap"
      >
        <IoSearchSharp/>
        Tìm kiếm
      </button>
    </div>
  )
};

export default Search;
