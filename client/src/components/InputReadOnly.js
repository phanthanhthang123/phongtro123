import React from 'react'

const InputReadOnly = ({label,value}) => {
  return (
    <div className='flex flex-col gap-2 w-full'>
        <label htmlFor='exactly-address' className='font-medium'>{label}</label>
        <input 
            id='exactly-address' 
            type='text' 
            readOnly 
            className='border border-gray-200 outline-none rounded-md bg-gray-100 p-[5px] w-full' 
            value={value}
        />
    </div>
  )
}

export default InputReadOnly