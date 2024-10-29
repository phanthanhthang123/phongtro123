import db from '../models'
import {v4} from 'uuid'
//cac thu vien ma hoa, bam pass
import bcrypt from 'bcrypt' //bam pass
import genarateCode from "../ultis/genarateCode"
import chothuecanho from "../../data/chothuecanho.json";
import chothuematbang from "../../data/chothuematbang.json";
import chothuphongtro from "../../data/chothuephongtro.json";
import nhachothue from "../../data/nhachothue.json"

require('dotenv').config();

// const dataBody = chothuecanho.body
const dataBody = nhachothue.body
//ma hoa pass
const hashPassword = password => bcrypt.hashSync(password,bcrypt.genSaltSync(12));

export const insertServices = ()=> new Promise(async (resolve, reject) => {
    try {
        dataBody.forEach(async (item) => {
            let postId = v4();
            let labelCode = genarateCode(4);
            let attributesId = v4();
            let userId = v4();
            let imagesId = v4();
            let overviewId = v4();

            await db.Post.create({
                id : postId,
                title : item?.header?.title,
                star : item?.header?.star,
                labelCode,
                address : item?.header?.address,
                attributesId,
                // categoryCode : "CTCH",
                categoryCode : "NCT",
                description : JSON.stringify(item?.mainContent?.content),
                userId,
                overviewId,
                imagesId
            })
            
            await db.Attribute.create({
                id : attributesId,
                price : item?.header?.attributes?.price,
                acreage : item?.header?.attributes?.acreage,
                published : item?.header?.attributes?.published,
                hashtag : item?.header?.attributes?.hashtag,
            })

            await db.Image.create({
                id : imagesId,
                image : JSON.stringify(item?.images)
            })

            await db.Label.create({
                code :labelCode,
                value : "Cho thue phong tro PTT"
            })

            await db.Overview.create({
                id : overviewId,
                code: item?.overview?.content.find(i=> i.name==="Mã tin:")?.content,
                area: item?.overview?.content.find(i=> i.name==="Khu vực")?.content,
                type: item?.overview?.content.find(i=> i.name==="Loại tin rao:")?.content,
                target: item?.overview?.content.find(i=> i.name==="Đối tượng thuê:")?.content,
                bounus: item?.overview?.content.find(i=> i.name==="Gói tin:")?.content,
                created: item?.overview?.content.find(i=> i.name==="Ngày đăng:")?.content,
                expire: item?.overview?.content.find(i=> i.name==="Ngày hết hạn:")?.content,
            })

            await db.User.create({
                id : userId,
                name: item?.contact?.content.find(i=> i.name==="Liên hệ:")?.content,
                password: hashPassword('123456'),
                phone: item?.contact?.content.find(i=> i.name==="Điện thoại:")?.content,
                zalo: item?.contact?.content.find(i=> i.name==="Zalo")?.content,
            })
        })


        resolve('Done.')        
    } catch (error) {
        reject(error);
    }
})
