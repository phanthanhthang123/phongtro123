import React, { useState,useEffect } from "react";
import { Province,ItemSideBar,RelatedPost } from "../../components";
import {List,Pagination} from './index';
import {useSelector} from 'react-redux';
import { useLocation } from "react-router-dom";
import { fomatVietnameseToString } from "../../ultils/CommonFunction/fomatVietnameseToString";

const Rental = () => {
  const location = useLocation();
  const {prices,areas,categories} = useSelector(state => state.app);
  const [categoryCode, setCategoryCode] = useState('none');
  const [categoryCurrent,setCategoryCurrent] = useState('')

  useEffect(()=>{
    const category = categories?.find(item => `/${fomatVietnameseToString(item.value)}` === location.pathname);
    setCategoryCurrent(category);
    if(category){
      setCategoryCode(category.code)
    }
  },[location])


  
  // console.log(categoryCode)


  return (
    <div className=" w-full flex flex-col gap-3">
      <div>
        <h1 className="text-[28px] font-bold ">{categoryCurrent?.header}</h1>
        <p className="text-base text-gray-700">{categoryCurrent?.subheader}</p>
      </div>
      <Province/>

      <div className="w-full flex gap-4">
        <div className="w-[70%]">
          <List categoryCode={categoryCode} />
          <Pagination />
        </div>
        <div className="w-[30%] gap-4 flex flex-col justify-start items-center">
          <ItemSideBar isDouble={true} type='priceCode' content={prices} title = 'Xem theo giá'/>
          <ItemSideBar isDouble={true} type='areaCode' content={areas} title = 'Xem theo diện tích'/>
          <RelatedPost/>
        </div>
      </div>
    </div>
  );
}

export default Rental;