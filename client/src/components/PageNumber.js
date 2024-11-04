import React, { memo } from "react";
import { createSearchParams, useNavigate } from "react-router-dom";

const notActive =
  "w-[46px] flex justify-center items-center h-[48px] bg-white hover:bg-gray-300  rounded-md cursor-pointer";
const active =
  "w-[46px] flex justify-center items-center h-[48px] bg-[#E13427] text-white   rounded-md cursor-pointer ";

const PageNumber = ({ text, currentPage, icon, setCurrentPage }) => {
  const navigate = useNavigate();

  const handleChangePage = () => {
    if (text !== "...") {
      setCurrentPage(+text);
      navigate({
        pathname: "/",
        search: createSearchParams({
          page: text,
        }).toString(),
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
