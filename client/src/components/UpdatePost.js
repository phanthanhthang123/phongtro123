import React from 'react'
import { CreatePost } from '../containers/System'

const UpdatePost = ({setIsEdit,isEdit=false}) => {
  return (
      <div className='absolute top-0 bottom-0 right-0 left-0 bg-overlay-30 flex justify-center'
      onClick={e => {
            e.stopPropagation()
            setIsEdit(false)
            
      }}
      >
            <div 
                  onClick={e => e.stopPropagation()} 
                  className='bg-white max-w-1100 w-full overflow-y-auto'
            >
                  <CreatePost setIsEdit={setIsEdit} isEdit={isEdit}/>
            </div>
      </div>
  )
}

export default UpdatePost