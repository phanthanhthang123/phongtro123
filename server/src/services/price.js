import { where } from 'sequelize';
import db from '../models'

//GET ALL price

export const getPriceService = ()=> new Promise( async (resolve, reject) => {
    try {
        const respone = await db.Price.findAll({
            raw : true,
            attributes : ['code','value','order']
        });
        resolve({
            err : respone ? 0 : 1,
            msg : respone ? 'OK' : 'FAILED TO GET PRICE',
            respone
        });
    } catch (error) {
        reject(error);
    }
})


