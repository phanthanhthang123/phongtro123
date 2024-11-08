import * as services from '../services/province';

export const getProvinces = async (req,res)=>{
    try {
        const respone = await services.getProvincesService();
        return res.status(200).json(respone);
    } catch (error) {
        return res.status(500).json({
            err : -1,
            msg : 'Failed at price controller: ' + error
        })
    }
}