import icons from "./icons"

const {HiPencilSquare,MdOutlinePostAdd,FaUser} = icons;

export const menuManage = [
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
        text : 'Thông tin tài khoản',
        path : '/he-thong/thong-tin-tai-khoan',
        icon : <FaUser/>
    },
]