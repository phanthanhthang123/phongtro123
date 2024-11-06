import React,{useEffect, useState} from "react";
import { PageNumber } from "../../components";
import { useSelector } from "react-redux";
import icons from "../../ultils/icons";
import { useSearchParams } from "react-router-dom";

const { TbPlayerTrackNextFilled,TbPlayerTrackPrevFilled } = icons;


const Pagination = () => {
  const { count, posts } = useSelector((state) => state.post);
  const [arrPage, setArrPage] = useState([])
  const [currentPage, setCurrentPage] = useState(1);
  const [isHideEnd,setIsHideEnd] = useState(false)
  const [isHideStart,setIsHideStart] = useState(false)
  const [searchParams] = useSearchParams();

  useEffect(()=>{
    let page = searchParams.get('page');
    page && +page !== currentPage && setCurrentPage(+page);
    !page && setCurrentPage(1);
  },[searchParams])

  useEffect(()=>{
    let maxPage = Math.ceil(count / process.env.REACT_APP_LIMIT_POST);
    let end = (currentPage + 1) > maxPage ? maxPage : (currentPage + 1);
    let start = (currentPage - 1) < 1 ? 1 : (currentPage - 1);
    let temp =[];
    for(let i = start ; i<= end;i++){
        temp.push(i)
    }
    setArrPage(temp);
    if(currentPage === maxPage || currentPage + 1 === maxPage){
      setIsHideEnd(true);
    }else{
      setIsHideEnd(false)
    }

    if(currentPage <= 2 ){
      setIsHideStart(true);
    }else{
      setIsHideStart(false)
    }
  },[count,posts,currentPage])

  return (
    <div className="flex items-center justify-center gap-2 py-5">
      {!isHideStart && <PageNumber icon={<TbPlayerTrackPrevFilled/>} currentPage = {currentPage} setCurrentPage={setCurrentPage} text={1}/>}
      {!isHideStart && <PageNumber text={"..."} />}

      {arrPage.length > 0 && arrPage.map(item => {
        return (
            <PageNumber
            key={item}
            text={item}
            currentPage = {currentPage}
            setCurrentPage = {setCurrentPage}
            />
        )
      })}
      {!isHideEnd && <PageNumber text={"..."} />}
      {!isHideEnd && <PageNumber icon={<TbPlayerTrackNextFilled />} setCurrentPage={setCurrentPage} text={Math.floor(count / posts.length)}/>}
    </div>
  );
};

export default Pagination;
