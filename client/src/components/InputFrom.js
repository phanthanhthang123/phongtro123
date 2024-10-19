import React from "react";

const InputFrom = ({ label }) => {
  return (
    <div>
      <label htmlFor="phone" className="text-xs">{label}</label>
      <input type="text" id="phone" className="outline-none bg-[#e8f0fe] p-2 rounded-md w-full"/>
    </div>
  );
};

export default InputFrom;
