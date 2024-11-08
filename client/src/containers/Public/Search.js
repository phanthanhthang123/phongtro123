import React,{useState} from "react";
import { SearchItem,Modal } from "../../components";
import icons from "../../ultils/icons";
import { useSelector } from "react-redux";
 
const {BsChevronRight,CiLocationOn,PiMoneyThin,FaCrop,FaHouse,IoSearchSharp} = icons;

const Search = () => {
  const [isShowModal, setIsShowModal] = useState(false)
  const [content,setContent] = useState([]);
  const [name,setName] = useState('');
  const {categories,provinces,areas,prices} = useSelector(state => state.app);
  // console.log(categories)
  // console.log(provinces)
  // console.log(areas)
  // console.log(prices)


  const handerShowModal = (content,name)=>{
    setContent(content)
    setName(name)
    setIsShowModal(true)
  }
  return(
    <>
      <div className="p-[10px] w-3/5 my-5 bg-[#FEBB02] rounded-lg lg:flex-row flex-col flex gap-2 items-center justify-around">
        <span onClick={()=>handerShowModal(categories,'category')}><SearchItem IconBefore={<FaHouse/>} fontWeight IconAfter={<BsChevronRight color='rgb(156,163,175)'/>} text={"Phòng trọ,nhà trọ"} /></span>
        <span onClick={()=>handerShowModal(provinces, 'province')}><SearchItem IconBefore={<CiLocationOn/>} IconAfter={<BsChevronRight color='rgb(156,163,175)'/>} text={"Toàn quốc"}/></span>
        <span onClick={()=>handerShowModal(prices,'price')}><SearchItem IconBefore={<PiMoneyThin/>} IconAfter={<BsChevronRight color='rgb(156,163,175)'/>} text={"Chọn giá"}/></span>
        <span onClick={()=>handerShowModal(areas, 'area')}><SearchItem IconBefore={<FaCrop/>} IconAfter={<BsChevronRight color='rgb(156,163,175)'/>} text={"Chọn diện tích"}/></span>
        <button
          type="button"
          className="outline-none py-2 px-4 w-full bg-secondary1 text-[13.3px] flex items-center justify-center gap-2 text-white rounded-lg overflow-hidden text-ellipsis whitespace-nowrap"
        >
          <IoSearchSharp/>
          Tìm kiếm
        </button>
      </div>
      {isShowModal && <Modal name={name}  content={content} setIsShowModal={setIsShowModal} />}
    </>
  )
};

export default Search;
