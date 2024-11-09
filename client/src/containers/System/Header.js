import React from 'react'
import { Link } from 'react-router-dom'
import { Navigation } from '../Public'
import icons from '../../ultils/icons'

const {FaPiggyBank,PiGarageFill } = icons;

const Header = () => {
  return (
    <div className='w-full flex flex-none h-[45px]'>
        <Link 
        to={'/'}
        className='flex justify-center items-center font-bold bg-secondary1 text-[20px] text-white w-[256px] flex-none cursor-pointer'>
            <span className="font-semibold text-[24px] flex items-center gap-1 text-gray-800">
              <PiGarageFill/>
              PhongtroPTT
              <FaPiggyBank/>
            </span>
        </Link>
        <div className='flex-auto'>
            <Navigation isAdmin={true}/> 
        </div>
    </div>
  )
}

export default Header