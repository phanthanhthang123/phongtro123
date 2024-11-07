import React, { memo } from "react";

const Button = ({ text, textColor, bgColor, fontBold,IcAfter,fullWidth,className, onClick }) => {
  return (
    <button
      type="button"
      className={`p-2 mx-0.5 ${textColor} ${fontBold} ${bgColor} ${className} ${fullWidth && 'w-full'} flex items-center gap-1 outline-none rounded-md hover:underline`}
      onClick={onClick}
    >
      {text}
      {IcAfter && (<span><IcAfter /></span>)}
    </button>
  );
};

export default memo(Button);
