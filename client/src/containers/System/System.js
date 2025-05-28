import React, { useEffect,useRef } from 'react'
import { useSelector } from 'react-redux'
import {Navigate ,Outlet,useLocation} from 'react-router-dom';
import { path } from '../../ultils/constant';
import {Header,Sidebar} from './index'
import { useParams } from 'react-router-dom';

const System = () => {
  const {isLoggedIn} = useSelector(state => state.auth);
  const headerRef = useRef();
  const params = useParams();
  const location = useLocation();
  useEffect(()=>{
    headerRef.current.scrollIntoView({behavior: 'smooth',block : 'start'})
  },[params,location.pathname])

  if(!isLoggedIn) return <Navigate to={`/${path.LOGIN}`} replace={true}/>
  return (
    <div ref={headerRef} className='w-full h-full flex flex-col items-center '>
      <Header/>
      <div className='flex w-full h-full flex-auto'>
        <Sidebar />
        <div className='flex-auto bg-white shadow-md h-full p-4'>
          <Outlet/>
        </div>
      </div>
     
    </div>
  )
}

export default System