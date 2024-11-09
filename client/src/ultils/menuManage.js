import icons from "./icons"

const {HiPencilSquare,MdOutlinePostAdd,FaUser} = icons;

export const menuManage = [
    {
        id : 1,
        text : 'Đăng tin cho thuê',
        path : '/system/create-new',
        icon : <HiPencilSquare/>
    },
    {
        id : 2,
        text : 'Quản lí tin đăng',
        path : '/system/manage-post',
        icon : <MdOutlinePostAdd/>
    },
    {
        id : 3,
        text : 'Thông tin tài khoản',
        path : '/system/profile',
        icon : <FaUser/>
    },
]