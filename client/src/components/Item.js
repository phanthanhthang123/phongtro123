import React,{memo,useState} from 'react'
import icons from '../ultils/icons';
// import {Link} from 'react-router-dom'

const {IoStar,GoHeartFill,FaRegHeart,BsBookmarkStarFill} = icons;
const indexs = [0,1,2,3]

const Item = ({images,address,attributes,description,star,title,user}) => {
  const [isHoverHeart, setisHoverHeart] = useState(false)
  return (
    <div className='w-full flex border-t border-orange-700 px-2 py-4 bg-[#FFF9F3]'>
        <div className='w-2/5 flex flex-wrap gap-[2px] items-start relative cursor-pointer'>
           {images.length > 0 && images.filter((item,index)=> indexs.some(i => i===index))?.map((i,index) => {
            return <img key={index} src={i} alt='preview' className='w-[110px] h-[150px] object-cover' />
           })}

            <span className='bg-overlay-30 text-white px-2 rounded-md absolute bottom-2 left-1'>{`${images.length} ảnh`}</span>
            <span 
            className='text-white rounded-md absolute bottom-2 right-5'
            onMouseEnter={()=>setisHoverHeart(true)}
            onMouseLeave={()=> setisHoverHeart(false)}
            >
                {isHoverHeart ? <GoHeartFill size={20} color='red'/> : <FaRegHeart size={20} />}
            </span>
        </div>
    
        <div className='w-3/5'>
            <div className='w-full flex justify-between gap-4'>
                <div to={'/'} className=' text-red-600 font-medium cursor-pointer'>
                    <IoStar className='star-item' size={18} color='yellow'/>
                    <IoStar className='star-item' size={18} color='yellow'/>
                    <IoStar className='star-item' size={18} color='yellow'/>
                    <IoStar className='star-item' size={18} color='yellow'/>
                    <IoStar className='star-item' size={18} color='yellow'/>
                    {title}
                </div>
                <div className='w-[10%] flex justify-end'>
                    <BsBookmarkStarFill size={24} color='orange'/>
                </div>
            </div>

            <div className='my-2 flex items-start justify-between overflow-hidden text-ellipsis'>
                <span className='font-bold text-base text-green-600'>{attributes?.price}</span>
                <span className='text-sm'>{attributes?.acreage}</span>
                <span className='text-sm'>{address}</span>
            </div>

            <p className='text-gray-600 text-sm w-full h-[80px] text-ellipsis overflow-hidden'>
                {description}
            </p>

            <div className='flex items-center my-[2px] justify-between h-[70px]'>
                <div className='flex items-center gap-1 '>
                    <img className='w-[30px] h-[30px] object-cover rounded-full' src='data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgFBQkGBxYIBwYGBw8ICQgWIBEiIiAdHx8YHSggGCYlGx8fITEhJSkrLi4uFx8zODMsNygtLisBCgoKBQUFDgUFDisZExkrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIAMgAyAMBIgACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAABAUGAwIBB//EADEQAQACAQIDBQYFBQAAAAAAAAABAgMEEgURIiEyQlJxEyMxUVNiQXKBkcEzYWNz0f/EABQBAQAAAAAAAAAAAAAAAAAAAAD/xAAUEQEAAAAAAAAAAAAAAAAAAAAA/9oADAMBAAIRAxEAPwD9bAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHm960pNrzWta13WtZSa7id8szTBNsOPu7vFYFpqNfp9Pzi991vp4+qyDfjUR/Tw7v8AZdUALWONX59WHHy+26Vp+K4MsxW+7Ba31O7+6gAa74jM4NdqMHKKZLWr9O3VVdaHXU1VeU+7yV72PzegJgAAAAAAAAAAAAAAAAI+vzew0uS8T1bdtfWQVXFtZObJOGk+7xW6tvilXAAAAAA9UvalovSbVtXqraryA0fD9XGqw8521yU6b1/lLZjQ6idNqKX59Pdv6NPE845wAAAAAAAAAAAAAAAq+O35YcdPNfd+y0VHHufPD8u0FQAAAAAAAA0+hvN9HitPx2Mw0vDqzXRYonybgSQAAAAAAAAAAAAAFbxyk209LxH9K/V+qyQeL5JporREbva22flBnwAAAAAAAeqV32rWPFba1VKxStaR8KV2spEzExMTtmrR8Nve+jx2yza1rc+q3yBKAAAAAAAAAAAAAAcNZhjUafJSY7du6vq7gMlMcpmJ+NXxO4pprYM83iPd57bq2/v8kEAAAAAH2Im0xERum3drUHTTYbajPTHX42t1W8sNRWsUrWsfCtdtVbwnQ3wzOXL02tXbXH5YWYAAAAAAAAAAAAAAAAOebHXNjtjvG6L12/lZnNjthy2x3jtpba1Sp43p+da56x216L/wCnAAAAWnBNPFsls1o7MXTT1VbQcHrt0VZ89psCcAAAAAAAAAAAAAAAAAAj8RrFtFlifJuSFfxnNFNN7OJ6s9tv6AoQAAAGh4ReLaKkeS01szyz4LqIplthtPZl6qeoLsAAAAAAAAAAAAAAAAR82s0+Hv5MfPy16rK/U8YtbnXT02/wCTJ/wFjqtTj01N2Se3w4/FZntTqL6nLN7+Lu18sOeS98lpvktbJa3is8gAAAAPtZmtotWds16q2fAF/wAP19NRSKXmtMte9XzJ7JRMxPOJ2ystHxW9OVNRFstfDkr3qguxzw5seeu7FeuSPtdAAAAAAAAAHy1orWbWmtYr3rWecuSmKlr5Lba171lBrtdk1NpiN2PHXu4/N6gmavi0Vmaaatck/Vt3Vbl1ObNMzkyXt9u7pcQAAAAAAAAAAAAHql70tFqWtjmvirZPwcXy05RmrXPHm7tlcA0en4hp8/ZF/ZW+nk6UtkU3R8Qy6a0VtNsuP6dvD6A0I54ctM+OMmO26tnQAAAEDi+onDp9lZ22z9P6fiCu4prJ1OXZSfd4rdP3T80EAAAAAAAAAAAAAAAAAAAS+H6u2my9u62O/fr/AC0UTFqxaJ3RbqrZkl5wXUTfDbFad04O76AsgAFBxrJu1ez8MVIqAIAAAAAAAAAAAAAAAAAAAACXwvN7HWU5z05eiwA0YAP/2Q==' alt='avatar'/>
                    <p>{user?.name}</p>
                </div>

                <div className='flex items-center gap-1'>
                    <button
                    type = 'button'
                    className='bg-blue-700 text-white text-sm p-1 rounded-md'
                    >
                        {`Gọi ${user?.phone}`}
                    </button>

                    <button
                    type = 'button'
                    className=' text-blue-700 px-1 text-sm rounded-md border border-blue-700'
                    >
                        Nhắn Zalo
                    </button> 
                </div>
            </div>
        </div>
    </div>
  )
}

export default memo(Item)