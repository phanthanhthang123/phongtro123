import React,{useState} from 'react'
import { InputFrom,Button } from '../../components'
import Swal from 'sweetalert2'

const Contact = () => {
  const [payload, setPayload] = useState({
      name : '',
      phone: '',
      content: ''
  })
  const handleSumbit = ()=>{
      // console.log(payload)
      Swal.fire(`Cảm ơn ${payload.name ? payload.name : 'bạn'}`,'Phản hồi của bạn đã được chúng tôi ghi nhận','success').then(()=>{
            setPayload({
                  name : '',
                  phone: '',
                  content: ''
            })
      })
  }
  return (
    <div className='w-full'>
      <h1 className='text-2xl font-semibold mb-6'>Liên hệ với chúng tôi</h1>
      <div className='flex gap-4'>
            <div className='flex-1 flex flex-col h-fit gap-4 p-4 rounded-[30px] text-white bg-gradient-to-br from-[#004BE5] to-[#04CDEA]'>
                  <h4 className='font-medium'>Thông tin liên hệ</h4>
                  <span>Chúng tôi biết bạn có rất nhiều sự lựa chọn. Nhưng cảm ơn vì đã chọn PhongtroPTT</span>
                  <span>Điện thoại: 0967 987 730</span>
                  <span>Email: thang.pt225927@sis.hust.edu.vn</span>
                  <span>Zalo: 0967 987 730</span>
                  <span>Viber: 0967 987 730</span>
                  <span>Địa chỉ: Tùng ảnh,Đức Thọ,Hà Tĩnh, Việt Nam </span>
            </div>
            <div className='flex-1 border shadow-md rounded-md p-4 mb-6 bg-white'>
                  <h4 className='font-medium text-lg mb-4'>Liên hệ trực tuyến</h4>
                  <div className='w-full flex flex-col gap-4'>
                        <InputFrom 
                              label='HỌ VÀ TÊN CỦA BẠN'
                              placeholder='VD: Phan Thanh Tháng'
                              value={payload.name}
                              name='name'
                              keyPayload='name'
                              setValue={setPayload}
                        />
                        <InputFrom 
                              label='SỐ ĐIỆN THOẠI'
                              placeholder='VD: 0967 987 730'
                              value={payload.phone}
                              name='phone'
                              keyPayload='phone'
                              setValue={setPayload}
                        />
                        <div>
                              <label htmlFor='desc'>NỘI DUNG MÔ TẢ</label>
                              <textarea 
                                    className='outline-none bg-[#e8f0fe] p-2 rounded-md w-full' 
                                    id='desc' 
                                    cols="30" 
                                    rows="5"
                                    value={payload.content}
                                    name='content'
                                    onChange={e => {
                                          setPayload(prev => ({
                                                ...prev,
                                                content : e.target.value
                                          }))
                                    }}
                              >
                              </textarea>
                        </div>
                        <Button
                              text='Gửi liên hệ'
                              bgColor='bg-blue-500'
                              textColor='text-white'
                              fullWidth
                              onClick={handleSumbit}
                        />
                  </div>
            </div>
      </div>
    </div>
  )
}

export default Contact