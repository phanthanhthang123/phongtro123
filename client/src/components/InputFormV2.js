import React from "react";

const InputFormV2 = ({ label, unit, value, setValue ,name,small,isRow}) => {
  return (
    <div className={`flex ${isRow ? isRow  : 'flex-col'}`}> 
      <label htmlFor={name} className="font-semibold text-base py-2 w-48">
        {label}
      </label>
      <div className="flex items-center flex-auto">
        <input
          id={name}
          type="text"
          className={`${unit ? "rounded-tl-md rounded-bl-md" : "rounded-md"} flex-auto outline-none border border-gray-300 p-2`}
          value={value || ''}
          onChange={(e)=> setValue(prev => ({
            ...prev,
            [name] : e?.target?.value
          }))}
        />

        {unit && (
          <span className="p-2 border flex-none w-16 bg-gray-200 flex justify-center items-center rounded-tr-md rounded-br-md border-gray-300 ">
            {unit}
          </span>
        )}
      </div>
      {small && <small>{small}</small>}
    </div>
  );
};

export default InputFormV2;
