import * as services from '../services/user';

export const getCurrent = async (req,res)=>{
    const { id } = req.user; 
    try {
        const respone = await services.getOne(id);
        return res.status(200).json(respone);
    } catch (error) {
        return res.status(500).json({
            err : -1,
            msg : 'Failed at price controller: ' + error
        })
    }
}