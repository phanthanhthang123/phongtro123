import React,{ memo } from 'react'
 

const SearchItem = ({IconBefore, IconAfter,text,fontWeight})=> {
  
  return (
    <div className='bg-white py-2 px-4 w-full rounded-md text-gray-400 text-[13px] flex justify-between items-center cursor-pointer'>
        <div className='flex justify-start items-center gap-1 w-full'>
            {IconBefore}
            <span className={fontWeight ? 'font-medium w-[100px] text-black overflow-hidden text-ellipsis whitespace-nowrap inline-block' : 'inline-block w-[100px] whitespace-nowrap overflow-hidden text-ellipsis'}>{text}</span>
        </div>
        {IconAfter}
    </div>
  )
}

export default memo(SearchItem)