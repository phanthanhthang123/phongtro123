import { where } from 'sequelize';
import db from '../models'

//GET ALL province
export const getOne = (id)=> new Promise( async (resolve, reject) => {
    try {
        const respone = await db.User.findOne({
            where :{id},
            raw : true,
            attributes : {
                exclude : ['password']
            }
        });
        resolve({
            err : respone ? 0 : 1,
            msg : respone ? 'OK' : 'FAILED TO GET getOne',
            respone
        });
    } catch (error) {
        reject(error);
    }
})

export const updateUser = (payload,id)=> new Promise( async (resolve, reject) => {
    try {
        const respone = await db.User.update(payload,{
            where :{id}
        });
        resolve({
            err : respone[0] > 0 ? 0 : 1,
            msg : respone[0] > 0 ? 'Updated' : 'FAILED TO Update user',
            respone
        });
    } catch (error) {
        reject(error);
    }
})


