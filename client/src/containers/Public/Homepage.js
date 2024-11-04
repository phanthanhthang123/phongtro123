import React, { useEffect } from "react";
import { text } from "../../ultils/constant";
import { Province,ItemSideBar } from "../../components";
import {List,Pagination} from './index';
import { useSearchParams } from "react-router-dom";
import {useSelector,useDispatch} from 'react-redux';
import * as action from '../../store/actions'

function Homepage() {
  const [params] = useSearchParams()
  // console.log(params.get('page'))
  const dispatch = useDispatch();

  useEffect(()=>{
    dispatch(action.getPrices())
    dispatch(action.getAreas())
  },[])

  const {categories,prices,areas} = useSelector(state => state.app);
  return (
    <div className="border border-red-500 w-full flex flex-col gap-3">
      <div>
        <h1 className="text-[28px] font-bold ">{text.HOME_TITLE}</h1>
        <p className="text-base text-gray-700">{text.HOME_DESCRIPTION}</p>
      </div>
      <Province/>

      <div className="w-full flex gap-4">
        <div className="w-[70%]">
          <List page={params.get('page')}/>
          <Pagination page={params.get('page') || 1}/>
          <div className="h-[500px]">

          </div>
        </div>
        <div className="w-[30%] border border-green-600 gap-4 flex flex-col justify-start items-center">
          <ItemSideBar isDouble={false} content = {categories} title = 'Danh sách cho thuê'/>
          <ItemSideBar isDouble={true} content={prices} title = 'Xem theo giá'/>
          <ItemSideBar isDouble={true} content={areas} title = 'Xem theo diện tích'/>
        </div>
      </div>
    </div>
  );
}

export default Homepage;
