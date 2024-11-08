import { where } from 'sequelize';
import db from '../models'

//GET ALL province

export const getProvincesService = ()=> new Promise( async (resolve, reject) => {
    try {
        const respone = await db.Province.findAll({
            raw : true,
            attributes : ['code','value']
        });
        resolve({
            err : respone ? 0 : 1,
            msg : respone ? 'OK' : 'FAILED TO GET PROVINCES',
            respone
        });
    } catch (error) {
        reject(error);
    }
})


