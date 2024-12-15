import React, { memo } from 'react'
import Slider from "react-slick";

var settings = {
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 1,
      slidesToScroll: 1
};

const SliderCustom = ({images}) => {
      // console.log(images?.length)
      // console.log(images)
  return (
    <div className='z-0 shadow-md rounded-md'>
      <Slider {...settings}>
            {Array.isArray(images) && images?.length > 0 && images?.map((item,index)=>{
                  return (
                        <div key={index} className='bg-black flex justify-center h-[320px] items-center'>
                              <img 
                                    src={item}
                                    alt='slider'
                                    className='object-contain max-h-full m-auto h-full '
                              />
                        </div>)
            })}
      </Slider>
    </div>
  )
}

export default memo(SliderCustom)