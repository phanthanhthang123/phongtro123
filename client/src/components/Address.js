import React,{useEffect,useState,memo} from 'react'
import {Select,InputReadOnly} from './index'
import { apiGetPublicProvinces,apiGetPublicDistrict } from '../services'
import { useSelector } from 'react-redux'

const Address = ({setPayload,isEdit=false,statusAddress,setStatusAddress}) => {

  const {dataEdit} = useSelector(state => state.post);
  
  const [provinces, setProvinces] = useState([]);
  const [districts, setDistricts] = useState([]);
  const [province, setProvince] = useState('');
  const [district, setDistrict] = useState('');

  useEffect(()=>{
    if(statusAddress){
      setProvince('');
      setDistrict('');
      setStatusAddress(false);
    }
  },[statusAddress])

  useEffect(() => {
    if (dataEdit && isEdit) {
      let addressArr = dataEdit?.address?.split(',');
      if (addressArr && addressArr.length > 0) {
        let foundProvince = provinces && provinces.length > 0 && provinces.find(item => item?.province_name === addressArr[addressArr.length - 1]?.trim());
        setProvince(foundProvince ? foundProvince.province_id : '');
      }
    }
  }, [provinces, dataEdit]);
  
  useEffect(() => {
    if (dataEdit && isEdit) {
      let addressArr = dataEdit?.address?.split(',');
      if (addressArr && addressArr.length > 1) {
        let foundDistrict = districts && districts.length > 0 && districts.find(item => item?.district_name === addressArr[addressArr.length - 2]?.trim());
        setDistrict(foundDistrict ? foundDistrict.district_id : '');
      }
    }
  }, [districts, dataEdit]);
  
  useEffect(()=>{
    const fetchPublicProvinces = async()=>{
        const respone = await apiGetPublicProvinces();
        if(respone?.status === 200) {
          // console.log(respone?.data);
            setProvinces(respone?.data?.results);
        }
    }
    fetchPublicProvinces();
  },[])

  useEffect(()=>{
    const fetchPublicDistrict = async ()=>{
        const respone = await apiGetPublicDistrict(province)
        if(respone?.status === 200){
            setDistricts(respone?.data?.results)
        }
    }
    if(province){
        fetchPublicDistrict()
    }
    setDistrict()
    !province && setDistricts([])
  },[province])

  useEffect(()=>{
    setPayload(prev => ({
        ...prev,
        address : `${district ? `${districts?.find(item => item.district_id === district)?.district_name}, ` : ''} ${province ? provinces?.find(item=>item.province_id === province)?.province_name : ''}`,
        province: province ? provinces?.find(item=>item.province_id === province)?.province_name : ' '
    }))
  },[province,district]);
  
  return (
    <div>
        <h2 className='font-semibold text-xl py-4'>Địa chỉ cho thuê</h2>
        <div className='flex flex-col gap-4'>
            <div className='flex gap-4 items-center'>
                <Select type='province' value={province} setValue={setProvince} options={provinces} label={'Tỉnh/Thành Phố'}/>
                <Select type='district' value={district} setValue={setDistrict} options={districts} label={'Quận/Huyện'}/>
            </div>
            <InputReadOnly 
                label='Địa chỉ chính xác'
                value = {`${district ? `${districts?.find(item => item.district_id === district)?.district_name}, ` : ''} ${province ? provinces?.find(item=>item.province_id === province)?.province_name : ''}`}
            />
        </div>
    </div>
  )
}

export default memo(Address)