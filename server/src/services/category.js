import db from '../models'

//GET ALL category

export const getCategoriesSevices = ()=> new Promise( async (resolve, reject) => {
    try {
        const respone = await db.Category.findAll({
            raw : true
        });
        resolve({
            err : respone ? 0 : 1,
            msg : respone ? 'OK' : 'FAILED TO GET CATEGORY',
            respone
        });
    } catch (error) {
        reject(error);
    }
})