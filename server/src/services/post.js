import { Op } from 'sequelize';
import db from '../models'
import {v4 as genarateId} from 'uuid' 
import genarateCode from '../ultis/genarateCode';
import moment from 'moment'
import genarateDate from '../ultis/genarateDate';

export const getPostsService = () => new Promise(async (resolve, reject) => {
    try {
        const response = await db.Post.findAll({
            raw : true,
            nest : true,
            include : [
                {model: db.Image,as: 'images',attributes :['image']},
                {model: db.Attribute, as: 'attributes',attributes :['price','acreage','published']},
                {model: db.User, as: 'user',attributes :['name','zalo','phone']}
            ],
            attributes: ['id','title','star','address','description']
        })

        resolve({
            err : response ? 0 : 1,
            msg : response ? 'OK' : 'Getting Pots is failed',
            response
        })
    } catch (error) {
        reject("get post fail : "+ error);
    }
})


export const getPostLimitService = (page,query) => new Promise(async (resolve, reject) => {
    try {
        let offset = (!page || +page <= 1 ) ? 0 : (+page -1);
        const response = await db.Post.findAndCountAll({
            where: query,
            raw : true,
            nest : true,
            offset: offset * (+process.env.LIMIT),
            limit : +process.env.LIMIT,
            order: [['createdAt','DESC']],
            include : [
                {model: db.Image,as: 'images',attributes :['image']},
                {model: db.Attribute, as: 'attributes',attributes :['price','acreage','published']},
                {model: db.User, as: 'user',attributes :['name','zalo','phone']}
            ],
            attributes: ['id','title','star','address','description']
        })

        resolve({
            err : response ? 0 : 1,
            msg : response ? 'OK' : 'Getting Pots is failed',
            response
        })
    } catch (error) {
        reject("get post fail : "+ error);
    }
})


export const getNewPostService = () => new Promise(async (resolve, reject) => {
    try {
        const response = await db.Post.findAll({
            raw : true,
            nest : true,
            offset: 0,
            order: [['createdAt','DESC']],
            limit : +process.env.LIMIT + 2,
            include : [
                {model: db.Image,as: 'images',attributes :['image']},
                {model: db.Attribute, as: 'attributes',attributes :['price','acreage','published']},
            ],
            attributes: ['id','title','star','createdAt']
        })

        resolve({
            err : response ? 0 : 1,
            msg : response ? 'OK' : 'Getting Pots is failed',
            response
        })
    } catch (error) {
        reject("get post fail : "+ error);
    }
})


export const createNewPostService = (body,userId) => new Promise(async (resolve, reject) => {
    try {
        const attributesId = genarateId();
        const imagesId = genarateId();
        const overviewId = genarateId();
        let labelCode = genarateCode(body.label).trim()
        const hashtag = `#${Math.floor(Math.random()*Math.pow(10,6))}`
        const currentDate = genarateDate();
        
        await db.Post.create({
            id: genarateId(),
            title: body.title || null ,
            labelCode,
            address: body.address || null,
            attributesId,
            categoryCode: body.categoryCode ,
            description: JSON.stringify(body.description) || null,
            userId,
            overviewId,
            imagesId,
            areaCode: body.areaCode || null,
            priceCode: body.priceCode || null,
            provinceCode : body?.province?.includes('Thành phố') ? genarateCode(body?.province?.replace('Thành phố ','')) : genarateCode(body?.province?.replace('Tỉnh ','')) || null,
            priceNumber: body.priceNumber,
            areaNumber: body.areaNumber
        })

        await db.Attribute.create({
            id: attributesId,
            price: +body.priceNumber < 1 ? `${+body.priceNumber*1000000} đồng/tháng` : `${body.priceNumber} triệu/tháng`,
            acreage: `${body.areaNumber} m2`,
            published: moment(new Date).format('DD/MM/YYYY'),
            hashtag: hashtag,
          });

        await db.Image.create({
            id: imagesId,
            image: JSON.stringify(body?.images),
        });

        await db.Overview.create({
            id: overviewId,
            code: hashtag,
            area: body.label,
            type: body?.category,
            target: body?.target,
            bounus: 'Tin thường',
            created: currentDate.today,
            expire: currentDate.expireDay,
        });

        await db.Province.findOrCreate({
            where : {
                [Op.or] : [
                    {value : body?.province?.replace('Thành phố ','')},
                    {value : body?.province?.replace('Tỉnh ','')}
                ]
            },
            defaults : {
                code: body?.province?.includes('Thành phố') ? genarateCode(body?.province?.replace('Thành phố ','')) : genarateCode(body?.province?.replace('Tỉnh ','')),
                value: body?.province?.includes('Thành phố') ? (body?.province?.replace('Thành phố ','')) : (body?.province?.replace('Tỉnh ','')),
            }
        })

        await db.Label.findOrCreate({
            where : {code : labelCode},
            defaults : {
                code: labelCode,
                value : body.label
            }
        })

        resolve({
            err : 0 ,
            msg : 'OK',
        })
    } catch (error) {
        reject( error);
    }
})

export const getPostLimitAdminService = (page,id,query) => new Promise(async (resolve, reject) => {
    try {
        let offset = (!page || +page <= 1 ) ? 0 : (+page -1);
        const queries = {...query,userId : id}
        const response = await db.Post.findAndCountAll({
            where: queries,
            raw : true,
            nest : true,
            offset: offset * (+process.env.LIMIT),
            limit : +process.env.LIMIT,
            order: [['createdAt','DESC']],
            include : [
                {model: db.Image,as: 'images',attributes :['image']},
                {model: db.Attribute, as: 'attributes',attributes :['price','acreage','published']},
                {model: db.User, as: 'user',attributes :['name','zalo','phone']},
                {model: db.Overview, as: 'overviews'},
            ],
            attributes: ['id','title','star','address','description']
        })

        resolve({
            err : response ? 0 : 1,
            msg : response ? 'OK' : 'Getting Posts is failed',
            response
        })
    } catch (error) {
        reject(error);
    }
})