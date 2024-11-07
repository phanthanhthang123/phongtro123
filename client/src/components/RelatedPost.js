import React,{memo,useEffect} from 'react'
import {Sitem} from './index'
import { useDispatch,useSelector } from 'react-redux'
import * as actions from '../store/actions'
const RelatedPost = () => {
  const {newPosts} = useSelector(state => state.post)
  const dispatch = useDispatch();
  
  useEffect(()=>{
    dispatch(actions.getNewPosts())
  },[]);


  return (
    <div className='w-full bg-white rounded-md shadow-md p-4 cursor-pointer'>
        <h3 className='font-semibold text-lg flex justify-center items-center mb-4'>Tin mới đăng</h3>
        <div className='w-full flex flex-col gap-1'>
          {
            newPosts.length > 0 && newPosts?.map((item,index)=>{
              return (
                <Sitem
                key={index}
                image={JSON.parse(item?.images?.image)}
                title={item?.title }
                price={item?.attributes?.price}
                createdAt={item?.createdAt}
                 />
              )
            })
          }
        </div>
    </div>
  )
}

export default memo(RelatedPost)