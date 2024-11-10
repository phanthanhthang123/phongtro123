import React,{memo} from 'react'

const Select = ({label,options,value,setValue,type}) => {

  return (
    <div className='flex flex-col gap-2 flex-1 '>
        <label className='font-medium' htmlFor='select-address'>{label} </label>
        <select value={value} onChange={(e)=>setValue(e.target.value)} id='select-address' className='outline-none border border-gay-300 p-2 rounded-md w-full'>
            <option value="">{`--${label}--`}</option>
            {options?.map((item,index) => {
                return (
                    <option 
                        key={index} 
                        value={type === 'province' ? item?.province_id : item?.district_id}
                    >
                        {type === 'province' ?  item?.province_name : type==='district' ? item?.district_name : item?.value}
                    </option>
                )
            })}
        </select>
    </div>
  )
}

export default memo(Select)