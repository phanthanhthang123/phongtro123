import React, { memo } from "react";

const Button = ({ text, textColor,underline, bgColor,px,py, fontBold,IcAfter,fullWidth,className, onClick }) => {
  return (
    <button
      type="button"
      className={`p-2 mx-0.5 ${textColor} hover:${underline} ${px} ${py} ${fontBold} ${bgColor} ${className} ${fullWidth && 'w-full'} flex items-center justify-center gap-1 outline-none rounded-md `}
      onClick={onClick}
    >
      {text}
      {IcAfter && (<span><IcAfter /></span>)}
    </button>
  );
};

export default memo(Button);
