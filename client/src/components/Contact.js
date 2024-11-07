import React from "react";
import {text} from '../ultils/dataContact'
import {Button} from '../components'

const Contact = () => {
  return (
    <div className="w-3/5  items-center justify-center gap-6 flex flex-col bg-white rounded-md shadow-md">
        <img 
            src={text.image} 
            alt="thumbnal" 
            className="w-full h-48 object-contain"
        />
        <p className="">{text.content}</p>

        <div className="flex items-center justify-around w-full">
            {text.contacts.map((item,index)=>{
                return (
                    <div key={index} className="flex flex-col items-center justify-center">
                        <span className="text-orange-500 font-bold">{item.text}</span>
                        <span className="text-blue-900 text-[22px] font-semibold">{item.phone}</span>
                        <span className="text-blue-900  text-[22px] font-semibold">{item.zalo}</span>
                    </div>
                )
            })}
            <Button text='Gửi liên hệ' fontBold = 'font-bold'  textColor='text-white' bgColor='bg-blue-900'/>
        </div>
        <div className="h-[50px]"></div>
    </div>
  )
};

export default Contact;
