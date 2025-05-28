import React from 'react'

const InputReadOnly = ({label,value,editPhone}) => {
  return (
    <div className='flex flex-col gap-2 w-full'>
        <label htmlFor={label} className='font-medium'>{label}</label>
        <div className='flex-auto'>
          <input 
              id={label}
              type='text' 
              readOnly 
              className='border border-gray-200 outline-none rounded-md bg-gray-100 p-[5px] w-full' 
              value={value || ''}
          />
          {editPhone && <small className='text-blue-500 py-4  cursor-pointer'>Đổi số điện thoại</small>}
        </div>
    </div>
  )
}

export default InputReadOnly