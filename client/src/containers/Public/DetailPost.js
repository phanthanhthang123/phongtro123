import React, { useEffect } from "react";
import { useParams } from "react-router-dom";
import { useDispatch, useSelector } from "react-redux";
import { getPostLimit2 } from "../../store/actions";
import { Slider } from "../../components";
import icons from "../../ultils/icons";

const {FaLocationDot,PiMoneyThin,FaCrop,CiClock1} = icons;

const DetailPost = () => {
  const { postId } = useParams();
  // console.log(postId)
  const dispatch = useDispatch();
  const {posts} = useSelector((state) => state.post);
  // console.log(posts[0]);
  // console.log(JSON.parse(posts[0]?.description))
  useEffect(() => {
    postId && dispatch(getPostLimit2({ id: postId }));
  }, [postId]);

  return (
    <div className="w-full flex gap-4">
      <div className="w-full mb-5 bg-white shadow-md">
        <Slider images={posts && posts?.length > 0 && (JSON.parse(posts[0]?.images?.image))}/>
        <div className="mt-9 flex flex-col gap-2 p-2">
          <h2 className="text-xl font-semibold text-red-600">{posts[0]?.title}</h2>

          <div className="flex items-center gap-2">
            <span>Chuyên mục: </span>
            <span className="text-blue-600 underline font-medium hover:text-orange-600 cursor-pointer">{posts[0]?.overviews?.area}</span>
          </div>

          <div className="flex gap-2 items-center">
            <FaLocationDot size={20}/>
            <span>{posts[0]?.address}</span>  
          </div>

          <div className="flex gap-2 items-center justify-between">
            <div className="flex items-center gap-2">
              <PiMoneyThin size={20}/>
              <span className="font-semibold text-lg text-green-600">{posts[0]?.attributes?.price}</span>
            </div>

            <div className="flex items-center gap-2">
              <FaCrop size={20}/>
              <span>{posts[0]?.attributes?.acreage}</span>
            </div>
            <div className="flex items-center gap-2">
              <CiClock1 size={20}/>
              <span>{posts[0]?.attributes?.published}</span>
            </div>
          </div>

          <div className="mt-8">
            <h3 className="font-semibold text-xl my-4">Thông tin mô tả</h3>
            <div className="flex flex-col gap-2">
              {posts[0]?.description && Array.isArray(JSON.parse(posts[0]?.description)) && JSON.parse(posts[0]?.description).map((item,index) => {
                return (
                  <span key={index}>{item}</span>
                )
              })}
              {!Array.isArray(JSON.parse(posts[0]?.description)) && <span >{JSON.parse(posts[0]?.description)}</span>}
            </div>
          </div>

          <div className="mt-8 w-full">
            <h3 className="font-semibold text-xl my-4">Đặc điểm tin đăng</h3>
            <table className="w-full">
              <tbody className="w-full">
                <tr className="w-full">
                  <td className='py-2'>Mã tin</td>
                  <td className='py-2 flex-auto'>{posts[0]?.overviews?.code}</td>
                </tr>
                <tr className="w-full  bg-gray-200">
                  <td className='py-2 '>Khu vực</td>
                  <td className='py-2 '>{posts[0]?.overviews?.area}</td>
                </tr>
                <tr className="w-full">
                  <td className='py-2 '>Loại tin rao</td>
                  <td className='py-2 '>{posts[0]?.overviews?.type}</td>
                </tr>
                <tr className="w-full bg-gray-200">
                  <td className='py-2 '>Đối tượng</td>
                  <td className='py-2 '>{posts[0]?.overviews?.target}</td>
                </tr>
                <tr className="w-full">
                  <td className='py-2 '>Gói tin</td>
                  <td className='py-2 '>{posts[0]?.overviews?.bounus}</td>
                </tr>
                <tr className="w-full bg-gray-200">
                  <td className='py-2 '>Ngày đăng</td>
                  <td className='py-2 '>{posts[0]?.overviews?.created}</td>
                </tr>
                <tr className="w-full">
                  <td className='py-2 '>Ngày hết hạn</td>
                  <td className='py-2 '>{posts[0]?.overviews?.expire}</td>
                </tr>
              </tbody>
            </table>
          </div>

          <div className="mt-8 w-full">
            <h3 className="font-semibold text-xl my-4">Thông tin liên hệ</h3>
            <table className="w-full">
              <tbody className="w-full">
                <tr className="w-full">
                  <td className='py-2'>Liên hệ</td>
                  <td className='py-2 flex-auto'>{posts[0]?.user?.name}</td>
                </tr>
                <tr className="w-full  bg-gray-200">
                  <td className='py-2 '>Điện thoại</td>
                  <td className='py-2 '>{posts[0]?.user?.phone}</td>
                </tr>
                <tr className="w-full">
                  <td className='py-2 '>Zalo</td>
                  <td className='py-2 '>{posts[0]?.user?.zalo}</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      {/* <div className="w-[30%]">
        SideBar
      </div> */}
    </div>
  );
};

export default DetailPost;
