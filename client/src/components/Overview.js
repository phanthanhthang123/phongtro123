import React,{useState} from 'react'
import { InputReadOnly, Select,InputFormV2 } from './index'
import { useSelector } from 'react-redux'

const targets = [
  {
    code : 'male',
    value : 'Nam'
  },
  {
    code : 'female',
    value : 'Nữ'
  }
]

const Overview = () => {
  const {categories} = useSelector(state => state.app)
  const {currentData} = useSelector(state => state.user)

  return (
    <div className='flex flex-col gap-2 w-full'>
        <h2 className='font-semibold text-xl py-4'>Thông tin mô tả</h2>
        <div className='w-full flex flex-col gap-4'>
            <div className='w-1/2'><Select options={categories} label='Loại chuyên mục'/></div>
            <InputFormV2 label='Tiêu đề'/>
            <div className='w-full flex flex-col gap-2'>
                <label htmlFor='desc' className='font-semibold text-base py-2'>Nội dung mô tả</label>
                <textarea id='desc' cols='30' rows='10' type='text' className='w-full rounded-md outline-none border border-gray-300 p-2'/>
            </div>
            <div className='w-1/2 flex flex-col gap-2'>
              <InputReadOnly label='Thông tin liên hệ' value={currentData?.name || currentData?.username}/>
              <InputReadOnly label='Điện thoại' value={currentData?.phone}/>
              <InputFormV2 label='Giá cho thuê' unit='đồng'/>
              <InputFormV2 label='Diện tích' unit='m2'/>
              <Select options={targets} label='Đối tượng cho thuê'/>
            </div>
        </div>
    </div>
  )
}

export default Overview