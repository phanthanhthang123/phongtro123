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


