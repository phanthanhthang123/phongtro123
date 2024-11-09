import React,{useEffect} from "react";
import Header from "./Header";
import { Outlet } from "react-router-dom";
import {Navigation,Search} from "./index";
import { Intro,Contact } from "../../components";
import { useDispatch } from "react-redux";
import * as action from '../../store/actions'
import { useLocation } from "react-router-dom";

const Home = () => {
  const dispatch = useDispatch();
  const location = useLocation();
  

  

  useEffect(()=>{
    dispatch(action.getPrices())
    dispatch(action.getAreas())
    dispatch(action.getProvince())
    
  },[])


  return (
    <div className="w-full gap-4 flex flex-col items-center h-full ">
      <Header />
      <Navigation />
      {!(location.pathname ==='/login' || location.pathname==='/register') && <Search/>}
      <div className="w-4/5 items-center lg:w-3/5 flex flex-col justify-start mt-8">
        <Outlet />
      </div>
      <Intro/>
      <Contact/>
      <div className="h-[500px]">
      </div>
    </div>
  );
};
export default Home;
