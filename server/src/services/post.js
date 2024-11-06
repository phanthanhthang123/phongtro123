import { where } from 'sequelize';
import db from '../models'

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
