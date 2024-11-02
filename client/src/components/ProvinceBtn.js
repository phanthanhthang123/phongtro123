import React,{memo} from 'react'


const ProvinceBtn = ({name,img}) => {
  return (
    <div className=' shadow-md rounded-bl-md rounded-br-md cursor-pointer text-blue-700 hover:text-orange-600'>
        <img 
            src={img}
            alt={name}
            className='w-[190px] h-[110px] object-cover rounded-tl-md rounded-tr-md'
        />
        <div className='font-medium  p-2 text-center'>{name}</div>
    </div>
  )
}

export default memo(ProvinceBtn)