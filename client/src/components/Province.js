import React from 'react'
import { ProvinceBtn } from "./index";
import { location } from "../ultils/constant";

const Province = () => {
  return (
    <div className="flex items-center gap-7 justify-center py-5">
      {location.map(item => {
          return (
            <ProvinceBtn 
            key={item.id}
            img={item.img}
            name={item.name}
            />
          )
        })} 
      </div>
  )
}

export default Province