import React from 'react'
import { Link } from 'react-router-dom'
import { Navigation } from '../Public'

const Header = () => {
  return (
    <div className='w-full flex flex-none h-[40px]'>
        <Link 
        to={'/'}
        className='flex justify-center items-center font-bold bg-secondary1 text-[20px] text-white w-[256px] flex-none cursor-pointer'>
            PhongtroPTT.com
        </Link>
        <div className='flex-auto'>
            <Navigation isAdmin={true}/> 
        </div>
    </div>
  )
}

export default Header