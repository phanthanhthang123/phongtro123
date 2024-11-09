import React,{useEffect, useState} from 'react'
import {NavLink} from 'react-router-dom'
import { fomatVietnameseToString } from '../../ultils/CommonFunction/fomatVietnameseToString';
import { useDispatch ,useSelector} from 'react-redux';
import * as actions from '../../store/actions';

const notActive = 'hover:bg-secondary2 h-full px-4 flex items-center ';
const active = 'hover:bg-secondary2 h-full px-4 bg-secondary2 flex items-center ';

const Navigation = ({isAdmin}) => {
  const dispatch = useDispatch();
  const {categories} = useSelector(state => state.app)
  useEffect(()=>{
    dispatch(actions.getCategories())
  },[])

  return (
    <div className={`w-full flex ${isAdmin ? 'justify-start' : 'justify-center'} items-center h-[45px] bg-secondary1`}>
        <div className='w-4/5 lg:w-3/5 flex items-center h-full justify-start text-sm font-medium  '>

              <div className='text-white h-full flex items-center my-4 justify-center'>
                <NavLink to={'/'} className={({isActive})=>{
                  return isActive ? active : notActive
                }}>  
                  Trang Chủ 
                </NavLink>
              </div>

          {categories?.length > 0 && categories.map((item)=>{
            return (<div key={item.code} className='text-white h-full flex items-center justify-center'  >
              <NavLink to={`/${fomatVietnameseToString(item.value)}`} className={({isActive})=>{
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