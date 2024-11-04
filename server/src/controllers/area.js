import * as services from '../services/area';

export const getAreas = async (req,res)=>{
    try {
        const respone = await services.getAreaService();
        return res.status(200).json(respone);
    } catch (error) {
        return res.status(500).json({
            err : -1,
            msg : 'Failed at price controller: ' + error
        })
    }
}