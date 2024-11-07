import React, { memo } from "react";
import { createSearchParams, useNavigate, useSearchParams } from "react-router-dom";
import { useLocation } from "react-router-dom";

const notActive =
  "w-[46px] flex justify-center items-center h-[48px] bg-white hover:bg-gray-300  rounded-md cursor-pointer";
const active =
  "w-[46px] flex justify-center items-center h-[48px] bg-[#E13427] text-white   rounded-md cursor-pointer ";

const PageNumber = ({ text, currentPage, icon, setCurrentPage }) => {
  const navigate = useNavigate();
  const location = useLocation();
  const [paramsSearch] = useSearchParams();
  let entries = paramsSearch.entries();
  // console.log(entries);

  const append = (entries) =>{
    let params = [];
    paramsSearch.append('page',+text)
    for(let entry of entries){
      params.push(entry);
    }
    // console.log(params)
    let a = {}
    params?.map(i=>{
      a = {...a,[i[0]] : i[1]}
    })
    return a;
  }
  
  const handleChangePage = () => {
    if (text !== "...") {
      setCurrentPage(+text);
      navigate({
        pathname: location.pathname,
        search: createSearchParams(append(entries)).toString(),
      });
    }
  };

  const pageActive = currentPage ? currentPage : 1;

  return (
    <div
      className={+text === +pageActive ? active : notActive}
      onClick={handleChangePage}
    >
      {icon || text}
    </div>
  );
};

export default memo(PageNumber);
