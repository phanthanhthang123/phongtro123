import React,{useEffect,useState} from 'react'
import {useDispatch,useSelector} from 'react-redux'
import * as action from '../../store/actions'
import moment from 'moment'
import {Button,Contact,UpdatePost} from '../../components'
import icons from '../../ultils/icons'

const {RiDeleteBin6Line,FaRegPenToSquare} = icons;


const ManagePost = () => {
      const dispatch = useDispatch()
      const [isEdit, setIsEdit] = useState(false)
      const {postOfCurrent} = useSelector(state => state.post);
      useEffect(()=>{
            dispatch(action.getPostLimitAdmin())
      },[])
      
      const checkStatus = (dateString) => {
            let today = moment().startOf('day'); // Lấy ngày hiện tại và đặt thời gian về đầu ngày
            let formattedDate = moment(dateString, process.env.REACT_APP_FORMAT_DATE, true); // Sử dụng định dạng từ .env và chế độ strict
            return formattedDate.isValid() && formattedDate.isSameOrAfter(today);
      }


  return (
      <div className='flex flex-col h-screen gap-6'>
            <div className='flex justify-between border-b border-b-gray-200 py-4 items-center'>
                  <h1 className="text-3xl font-medium ">Quản lý tin đăng</h1>
                  <select name='' id='' className='outline-none border p-2 border-gray-300 rounded-md'>
                        <option value="">Lọc theo trạng thái</option>
                        
                  </select>
            </div>
 
            <table className='w-full table-auto'>
                  <thead className='border border-gray-400 bg-gray-200'>
                        <tr className='py-2'>
                              <th className='border border-gray-400 py-2 min-w-[100px]'>Mã tin</th>
                              <th className='border border-gray-400 py-2 min-w-[120px]'>Ảnh đại diện</th>
                              <th className='border border-gray-400 py-2'>Tiêu đề</th>
                              <th className='border border-gray-400 py-2'>Giá</th>
                              <th className='border border-gray-400 py-2'>Ngày bắt đầu</th>
                              <th className='border border-gray-400 py-2'>Ngày hết hạn</th>
                              <th className='border border-gray-400 py-2'>Trạng thái</th>
                              <th className='border border-gray-400 py-2'>Tùy chọn</th>
                        </tr>
                  </thead>
                  <tbody>
                        {postOfCurrent?.length > 0 && postOfCurrent?.map((item,index)=>{
                              let srcs = item?.images?.image;
                              let src = JSON.parse(srcs)?.filter(itemsrc => itemsrc!==' ');
                              return (
                                    <tr key={index} className=''>
                                          <td className='border border-gray-400 text-center py-2'>{item?.overviews?.code}</td>
                                          <td className='border border-gray-400 justify-center items-center py-2'>
                                                <div className='flex items-center justify-center'><img src={src[0]} alt='preview' className='h-[80px] w-[80px] object-cover border border-gray-300 rounded-md'/></div>
                                          </td>
                                          <td className='border border-gray-400 text-center py-2 '>{item?.title?.length > 44 ? `${item?.title?.slice(0,44)}...` : item?.title } </td>
                                          <td className='border border-gray-400 text-center py-2 '>{item?.attributes?.price}</td>
                                          <td className='border border-gray-400 text-center py-2 '>{item?.overviews?.created}</td>
                                          <td className='border border-gray-400 text-center py-2 '>{item?.overviews?.expire}</td>
                                          <td className='border border-gray-400 text-center py-2 '>
                                                {checkStatus(item?.overviews?.expire?.split(' ')[3]) ? 'Đang hoạt động' : 'Đã hết hạn'}
                                          </td>
                                          <td className='border border-gray-400 text-center py-2'>
                                                <div className='flex items-center justify-center gap-4'>
                                                      <Button 
                                                            onClick={()=>{
                                                                  dispatch(action.editData(item))
                                                                  setIsEdit(true)
                                                            }} 
                                                            text='Sửa' 
                                                            bgColor='bg-green-500' 
                                                            textColor='text-white' 
                                                            underline='underline' 
                                                            IcAfter={FaRegPenToSquare}
                                                      />
                                                      <Button text='Xóa' bgColor='bg-orange-500' textColor='text-white' underline='underline' IcAfter={RiDeleteBin6Line} />
                                                </div>
                                          </td>
                                    </tr>
                              )
                        })}
                  </tbody>
            </table>
            {isEdit && <UpdatePost setIsEdit={setIsEdit}/>}

            {/* <div className='w-full items-center flex justify-center'>
                  <Contact width='full'/>
            </div> */}

            {/* <div className='h-[500px]'>

            </div> */}
      </div>
  )
}

export default ManagePost