import React,{memo,useCallback} from 'react'
import { text } from '../ultils/dataIntro'
import icons from '../ultils/icons'
import {Button} from '../components'
import { useSelector } from 'react-redux'
import { Link } from 'react-router-dom'
import { useNavigate } from "react-router-dom";
import { fomatVietnameseToString } from '../ultils/CommonFunction/fomatVietnameseToString'

const {IoStar} = icons;
const start = [1,2,3,4,5];

const Intro = () => {
  const {categories} = useSelector(state => state.app);
  const navigate = useNavigate();
  const handleCreatePost = useCallback(()=>{
    navigate('/he-thong/tao-moi-bai-dang')
  })
  return (
    <div className='w-3/5 bg-white rounded-md shadow-md p-4 gap-4 flex flex-col justify-center items-center'>
        <h3 className='font-bold text-lg'>{text.title}</h3>
        <p className='text-gray-800 text-center text-[15px] my-4'>
            {text.description} 
            <span className=''>
            {categories?.length > 0 && categories.map((item,index)=>{
                return (
                    <Link 
                    to={`${fomatVietnameseToString(item.value.toLowerCase())}`} 
                    key={index}
                    className='text-blue-600 font-medium hover:text-orange-600'
                    >
                        {`${item.value.toLowerCase()}, `}
                    </Link>
                )
            })}
            </span>
            {text.description2}
            </p>
        <div className='flex items-center justify-around w-full'>
            {text.statistic.map((item,index) => {
                return (
                    <div className='flex flex-col justify-center items-center' key={index}>
                        <h4 className='text-lg font-bold'>{item.value}</h4>
                        <p className='text-gray-700'>{item.name}</p>
                    </div>
                )
            })}
        </div>

        <h3 className='font-bold text-lg py-2'>{text.price}</h3>
        <div className='flex items-center justify-center gap-1 mt-[-12px]'>
            {start.map((item,index)=>{
                return (
                    <span key={index}><IoStar color='yellow' size={22}/></span>
                )
            })}
        </div>
        <p className='text-gray-600 italic text-center text-[13px]'>{text.comment}</p>
        <span className='text-gray-700'>{text.author}</span>
        <h3 className='font-bold text-lg py-2'>{text.question}</h3>
        <p>{text.answer}</p>

        <Button 
        text ='Đăng tin ngay'
        bgColor ='bg-secondary2'
        textColor = 'text-white'
        fontBold = 'font-bold'
        onClick={handleCreatePost}
        underline='underline'
        />
        <div className='h-[12px]'></div>

    </div>
  )
}

export default memo(Intro)