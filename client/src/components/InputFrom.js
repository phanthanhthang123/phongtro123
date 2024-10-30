import React from "react";

const InputFrom = ({ label, value, setValue,type, keyPayload, invalidFeilds ,setInvalidFeilds}) => {
  return (
    <div>
      <label htmlFor="phone" className="text-xs">
        {label}
      </label>
      <input
        type = {type || 'text'}
        // id="phone"
        className="outline-none bg-[#e8f0fe] p-2 rounded-md w-full"
        value={value}
        onChange={(e) =>
          setValue((prev) => ({ ...prev, [keyPayload]: e.target.value }))
        }
        onFocus={()=>{setInvalidFeilds && setInvalidFeilds([])}}
      />
      {invalidFeilds && invalidFeilds.length > 0 &&
        invalidFeilds.some((i) => i.name === keyPayload) && (
          <small className="text-red-500 italic">
            {invalidFeilds.find((i) => i.name === keyPayload)?.message}
          </small>
        )}
    </div>
  );
};

export default InputFrom;
