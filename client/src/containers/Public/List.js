import React,{useEffect} from 'react'
import {Button, Item} from '../../components'
import { getPost,getPostLimit } from '../../store/actions/post'
import {useDispatch,useSelector} from 'react-redux'
import { useSearchParams } from 'react-router-dom'


const List = ({categoryCode}) => {
  const dispatch = useDispatch();
  const {posts} = useSelector(state => state.post)
  const [searchParams] = useSearchParams();

  useEffect(()=>{
    let params = [];
    for(let entry of searchParams.entries()){
      params.push(entry);
    }
    let searchParamsObject = {}
    params?.map(i=>{
      searchParamsObject = {...searchParamsObject,[i[0]] : i[1]}
    })
    // console.log(searchParamsObject)
    if(categoryCode) searchParamsObject.categoryCode = categoryCode;
    dispatch(getPostLimit(searchParamsObject));
  },[searchParams,categoryCode])

  // console.log(page)
  return (
    <div className='w-full p-2 bg-white shadow-md rounded-md'>
        <div className='flex justify-between'>
            <h4 className='text-xl font-semibold my-3'>Danh sách tin đăng</h4>
            <span>Cập nhật: 12:05 25/08/2024</span>
        </div>
        <div className='flex items-center gap-2 my-2'>
            <span>Sắp xếp:</span>
            <Button bgColor='bg-gray-200' text="mặc định"/>
            <Button bgColor='bg-gray-200' text="mới nhất"/>
            <Button bgColor='bg-gray-200' text="có video"/>
        </div>

        <div className='items'>
            {posts?.length > 0 && posts.map(item => {
              return (
                <Item
                key={item?.id}
                address = {item?.address}
                attributes = {item?.attributes}
                description = {JSON.parse(item?.description)}
                images = {JSON.parse(item?.images?.image)}
                star = {+item.star}
                title = {item?.title}
                user = {item?.user}
                id = {item?.id}
                />
              )
            })}
        </div>

    </div>
  )
}

export default List