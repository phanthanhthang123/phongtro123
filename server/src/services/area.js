import db from '../models'

//GET ALL area

export const getAreaService = ()=> new Promise( async (resolve, reject) => {
    try {
        const respone = await db.Area.findAll({
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