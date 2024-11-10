import React from "react";
import {Overview,Address} from '../../components'
import icons from "../../ultils/icons";

const {ImCamera} = icons;

const CreatePost = () => {
  return (
    <div className="px-6">
      <h1 className="text-3xl font-medium border-b border-b-gray-200 py-4">Đăng tin mới</h1>
      <div className="flex gap-4">
        <div className="py-4 border border-red-600 flex flex-col gap-8 flex-auto">
          <Address/>
          <Overview/>
          <div className='w-full'>
              <h2 className='font-semibold text-xl py-4'>Hình ảnh</h2>
              <small>Cập nhật hình ảnh rõ ràng sẽ cho thuê nhanh hơn</small>
              <div className="w-full">
                <label 
                  htmlFor="file" 
                  className="w-full rounded-md h-[200px] my-4 items-center flex flex-col gap-1 justify-center border-gray-400 flex border-dashed border-2 bg-white cursor-pointer"
                >
                  <ImCamera color="blue" size={80}/>
                  Thêm ảnh
                </label>
                <input id="file" type="file" hidden/>
              </div>
          </div>
          <div className="h-[500px]">

          </div>
        </div>
        <div className="border border-red-600 w-1/3 flex-none py-4">
          map
        </div>
      </div>
    </div>
  );
};

export default CreatePost;
