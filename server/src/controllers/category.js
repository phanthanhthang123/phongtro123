import * as services from '../services/category';

export const getCategories = async (req,res)=>{
    try {
        const respone = await services.getCategoriesSevices();
        return res.status(200).json(respone);
    } catch (error) {
        return res.status(500).json({
            err : -1,
            msg : 'Failed at category controller: ' + error
        })
    }
}