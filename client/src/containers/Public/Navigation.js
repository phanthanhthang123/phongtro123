import React,{useEffect, useState} from 'react'
import {NavLink} from 'react-router-dom'

import {apiGetCategories} from '../../services/catelogy'

import { fomatVietnameseToString } from '../../ultils/constant';

const notActive = 'hover:bg-secondary2 h-full px-4 flex items-center ';
const active = 'hover:bg-secondary2 h-full px-4 bg-secondary2 flex items-center ';

const Navigation = () => {
  const [categories,setCategories] = useState([]);

  useEffect(()=>{
    const fetchCategory = async ()=>{
      const respone  = await apiGetCategories();
      if(respone?.data?.err === 0 ){
        setCategories(respone.data.respone);
      }
    } 
    fetchCategory();
  },[])
  

  return (
    <div className='w-screen flex justify-center items-center h-[40px] bg-secondary1'>
        <div className='w-4/5 lg:w-3/5 flex items-center h-full justify-start text-sm font-medium  '>
              <div className='text-white h-full flex items-center justify-center'>
                <NavLink to={'/'} className={({isActive})=>{
                  return isActive ? active : notActive
                }}> 
                  Trang Chủ 
                </NavLink>
              </div>

          {categories?.length > 0 && categories.map((item)=>{
            return (<div key={item.code} className='text-white h-full flex items-center justify-center'  >
              <NavLink to={`${fomatVietnameseToString(item.value)}`} className={({isActive})=>{
                return isActive ? active : notActive
              }}> 
                {item.value} 
              </NavLink>
              </div>)
           
          })}            
        </div>
    </div>
  )
}

export default Navigation