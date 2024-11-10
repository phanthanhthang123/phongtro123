import React from "react";

const InputFormV2 = ({label,unit}) => {
  return (
    <div>
      <label htmlFor="title" className="font-semibold text-base py-2">{label}</label>
      <div className="flex items-center">
        <input
          id="title"
          type="text"
          className={`${unit ? 'rounded-tl-md rounded-bl-md' : 'rounded-md'} flex-auto outline-none border border-gray-300 p-2`}
        />
        {unit&&<span className="p-2 border flex-none w-16 bg-gray-200 flex justify-center items-center rounded-tr-md rounded-br-md border-gray-300 ">{unit}</span>}
      </div>
    </div>
  );
};

export default InputFormV2;
