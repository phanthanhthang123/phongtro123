import icons from "./icons"

const {HiPencilSquare,MdOutlinePostAdd,FaRegPenToSquare,BsFillFilePostFill,IoChatbubblesOutline} = icons;

const menuSidebar = [
    {
        id : 1,
        text : 'Đăng tin cho thuê',
        path : '/he-thong/tao-moi-bai-dang',
        icon : <HiPencilSquare/>
    },
    {
        id : 2,
        text : 'Quản lí tin đăng',
        path : '/he-thong/quan-ly-bai-dang',
        icon : <MdOutlinePostAdd/>
    },
    {
        id : 3,
        text : 'Sửa thông tin cá nhân',
        path : '/he-thong/sua-thong-tin-ca-nhan',
        icon : <FaRegPenToSquare/>
    },
    {
        id : 4,
        text : 'Bảng giá dịch vụ',
        path : '/he-thong/bang-gia-dich-vu',
        icon : <BsFillFilePostFill/>
    },
    {
        id : 5,
        text : 'Liên hệ',
        path : '/lien-he',
        icon : <IoChatbubblesOutline/>
    }
]

export default menuSidebar;