import React,{useEffect,useState} from 'react'
import {useDispatch,useSelector} from 'react-redux'
import * as action from '../../store/actions'
import moment from 'moment'
import {Button,Contact,UpdatePost} from '../../components'
import icons from '../../ultils/icons'
import { apiDeletePost } from '../../services'
import Swal from 'sweetalert2'
import { Link } from 'react-router-dom'

const {RiDeleteBin6Line,FaRegPenToSquare,FcOpenedFolder} = icons;


const ManagePost = () => {
      const dispatch = useDispatch()
      const [isEdit, setIsEdit] = useState(false)
      const [updateData, setUpdateData] = useState(false)
      const [posts, setPosts] = useState([])
      const [status, setStatus] = useState('')
      

      const {postOfCurrent,dataEdit} = useSelector(state => state.post);
      useEffect(()=>{
            dispatch(action.getPostLimitAdmin())
      },[dataEdit])

      useEffect(()=>{
            dispatch(action.getPostLimitAdmin())
      },[updateData])
      useEffect(()=>{
            setPosts(postOfCurrent)
      },[postOfCurrent])
      
      const checkStatus = (dateString) => {
            const format = process.env.REACT_APP_FORMAT_DATE || "DD/MM/YYYY";
            const normalizedDate = moment(dateString, ["D/M/YYYY", format], true); // Chấp nhận ngày/tháng có 1 chữ số
            let today = moment().startOf('day');
            return normalizedDate.isValid() && normalizedDate.isSameOrAfter(today);
      };

      const handleDeletePost = async (postId)=>{
            const response = await apiDeletePost(postId);
            // console.log(response)
            if(response?.data?.err === 0){
                  Swal.fire('Thành công','Xóa tin đăng thành công','success').then(()=>{
                        setUpdateData(prev => !prev)
                  })
            }else{
                  Swal.fire('Opps!','Xóa tin đăng thất bạt','error')
            }
      }
      useEffect(()=>{
            if(status===1){
                  const activePost = postOfCurrent?.filter(item => checkStatus(item?.overviews?.expire?.split(' ')[3]))
                  setPosts(activePost)
            }
            else if(status===2){
                  const activePost = postOfCurrent?.filter(item => !checkStatus(item?.overviews?.expire?.split(' ')[3]))
                  setPosts(activePost)
            }else{
                  setPosts(postOfCurrent)
            }
      },[status])


  return (
      <div className='flex flex-col gap-6'>
            <div className='flex justify-between border-b border-b-gray-200 py-4 items-center'>
                  <h1 className="text-3xl font-medium ">Quản lý tin đăng</h1>
                  <select onChange={e => setStatus(+e.target.value)} value={status} name='' id='' className='outline-none border p-2 border-gray-300 rounded-md'>
                        <option value="0">Lọc theo trạng thái</option>
                        <option value="1">Đang hoạt động</option>
                        <option value="2">Đã hết hạn</option>
                        
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
                        {posts?.length > 0 && posts?.map((item,index)=>{
                              // console.log(item)
                              let srcs = item?.images?.image
                              let srcLink = item?.images?.image !=='""' ? JSON.parse(srcs)?.filter(itemsrc => itemsrc !== '') : '';
                              // console.log(src)
                              return (
                                    <tr key={index} className=''>
                                          <td className='border border-gray-400 text-center py-2'>{item?.overviews?.code}</td>
                                          <td className='border border-gray-400 justify-center items-center py-2'>
                                                <div className='flex items-center justify-center'><img src={srcLink ? srcLink[0] : ''} alt='preview' className='h-[80px] w-[80px] object-cover border border-gray-300 rounded-md'/></div>
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
                                                      <Button 
                                                            onClick={()=>handleDeletePost(item?.id)}
                                                            text='Xóa' 
                                                            bgColor='bg-orange-500' 
                                                            textColor='text-white' 
                                                            underline='underline' 
                                                            IcAfter={RiDeleteBin6Line} 
                                                      />
                                                </div>
                                          </td>
                                    </tr>
                              )
                        })}
                  </tbody>
            </table>


            {isEdit && <UpdatePost setIsEdit={setIsEdit} isEdit={isEdit}/>}
            {posts?.length === 0 && 
            <div className='w-full flex flex-col justify-center items-center gap-4'>
                  <div className='p-[80px] flex flex-col items-center'>
                        <FcOpenedFolder size={120} />
                        <span>Tìm thấy 0 tin đăng </span>
                        <span>Bấm <Link to='/he-thong/tao-moi-bai-dang'><span className='text-blue-600 underline hover:text-orange-600'>vào đây</span></Link> để bắt đầu đăng tin</span>
                  </div>
            </div>
            }
            <div className='w-full items-center mt-40 flex justify-center'>
                  <Contact width='full'/>
            </div>
      </div>
  )
}

export default ManagePost