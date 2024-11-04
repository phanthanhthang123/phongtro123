import React, { memo } from "react";
import icons from "../ultils/icons";

const { GrNext } = icons;

const ItemSideBar = ({ content, title, isDouble }) => {
  const formatContent = () => {
    const oddEl = content?.filter((item, index) => index % 2 !== 0);
    const evenEl = content?.filter((item, index) => index % 2 === 0);
    const formatContent = oddEl?.map((item, index) => {
      return {
        right: item,
        left: evenEl.find((item2, index2) => index2 === index),
      };
    });
    return formatContent;
  };
  // console.log(formatContent(content))

  return (
    <div className="p-4 bg-white rounded-md w-full">
      <h3 className="text-lg font-semibold mb-4">{title}</h3>

      {!isDouble && (
        <div className="flex flex-col gap-2">
          {content?.length > 0 &&
            content.map((item, index) => {
              return (
                <div
                  key={index}
                  className="flex gap-2 items-center cursor-pointer hover:text-orange-600 border-b border-dashed border-gray-200 pb-1"
                >
                  <GrNext size={10} color="#ccc" />
                  <p className="text-md">{item.value}</p>
                </div>
              );
            })}
        </div>
      )}

      {isDouble && (
        <div className="flex flex-col gap-2">
          {content?.length > 0 &&
            formatContent().map((item,index) => {
              return (
                <div key={index}>
                  <div className="flex items-center justify-around">
                    <div className="flex flex-1 gap-2 items-center cursor-pointer hover:text-orange-600 border-b border-dashed border-gray-200 pb-1">
                      <GrNext size={10} color="#ccc" />
                      <p className="text-md">{item?.left?.value}</p>
                    </div>
  
                    <div className="flex flex-1 gap-2 items-center cursor-pointer hover:text-orange-600 border-b border-dashed border-gray-200 pb-1">
                      <GrNext size={10} color="#ccc" />
                      <p className="text-md">{item?.right?.value}</p>
                    </div>
                  </div>

                </div>
              );
            })}
        </div>
      )}
    </div>
  );
};

export default memo(ItemSideBar);