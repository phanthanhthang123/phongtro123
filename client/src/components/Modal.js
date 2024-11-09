import React,{useState,useEffect} from "react";
import icons from "../ultils/icons";

const { GrLinkPrevious } = icons;

const Modal = ({ setIsShowModal, content, name }) => {
  // console.log(content);
  const [persent1,setPersen1] = useState(0)
  const [persent2,setPersen2] = useState(100)

  useEffect(()=>{
    const activeTrackEl = document.getElementById('track-active');
    const left = persent1 < persent2 ? persent1 : persent2;
    const right = persent1 > persent2 ? (+100- +persent1) : (+100- +persent2);  
    if(activeTrackEl){
      activeTrackEl.style.left = `${left}%`
      activeTrackEl.style.right = `${right}%`
    }
  },[persent1,persent2])

  const handelClickStack = (e)=>{
    e.stopPropagation();
    const stackEl = document.getElementById('track');
    const stackRect = stackEl.getBoundingClientRect();
    let percent = Math.floor((e.clientX - stackRect.left)*100 / stackRect.width)
    if(Math.abs(percent - persent1) < Math.abs(percent - persent2)){
      setPersen1(percent)
    }else{
      setPersen2(percent)
    }
  }

  return (
    <div
      onClick={(e) => {
        setIsShowModal(false);
      }}
      className="fixed h-screen top-0 left-0 right-0 bottom-0 bg-overlay-30 z-20 flex items-center justify-center"
    >
      <div
        onClick={(e) => {
          e.stopPropagation();
          setIsShowModal(true);
        }}
        className="w-2/4 bg-white rounded-md shadow-md "
      >
        <div className="h-[45px] px-4 flex items-center border-b border-b-gray-400">
          <span className="hover:text-red-600"
            onClick={(e) => {
              e.stopPropagation();
              setIsShowModal(false);
            }}
          >
            <GrLinkPrevious size={24} className="cursor-pointer" />
          </span>
        </div>

        {(name === 'category' || name ==='province' || name==='price' || name==='area') && 
        <div className=" px-4 flex flex-col">
          {content?.map((item, index) => {
            return (
              <span className="py-2 flex gap-3 items-center border-b border-b-gray-400 w-full " key={index}>
                <input
                  id={item.code}
                  type="radio"
                  name={name}
                  value={item.code}
                />
                <label className="hover:text-blue-600 cursor-pointer flex-1" htmlFor={item.code}>{item?.value}</label>
              </span>
            );
          })}
        </div>}

        {/* {(name==='price' || name==='area') && 
        <div className="p-12 w-full">
          <div className="flex flex-col w-full items-center justify-center relative">
            <div onClick={handelClickStack} id="track" className="slider-track h-[7px] absolute top-0 right-0 left-0 bottom-0 w-full bg-gray-300 rounded-full cursor-pointer"></div>
            <div onClick={handelClickStack} id="track-active" className="slider-track-active h-[7px] absolute top-0 bottom-0  bg-orange-600 rounded-full cursor-pointer"></div>
            <input
              type="range"
              max='100'
              min='0'
              step='5'
              value={persent1}
              className="w-full appearance-none pointer-events-none absolute top-0 bottom-0 "
              onChange={(e)=>setPersen1(+e.target.value)}
            />
            <input
              type="range"
              max='100'
              min='0'
              step='5'
              value={persent2}
              className="w-full appearance-none pointer-events-none absolute top-0 bottom-0"
              onChange={(e)=>setPersen2(+e.target.value)}
            />     
          </div>
          
        </div>} */}
        
      </div>
    </div>
  );
};

export default Modal;
