import React,{memo} from 'react'

const Select = ({label,options,value,setValue,type,name}) => {
 
  return (
    <div className='flex flex-col gap-2 flex-1 '>
        <label className='font-medium' htmlFor={label}>{label} </label>
        <select 
            value={value}
            onChange={(e)=> !name ? setValue(e.target.value) : setValue(prev => ({
                ...prev,
                [name]: e.target.value
            }))} 
            id={label}
            className='outline-none border border-gay-300 p-2 rounded-md w-full'
        >
            <option value="">{`--${label}--`}</option>
            {options?.map((item,index) => {
                return (
                    <option 
                        key={index} 
                        value={type === 'province' ? item?.province_id : type==='district' ? item?.district_id : item?.code}
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