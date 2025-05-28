import * as services from '../services/user';

export const getCurrent = async (req,res)=>{
    const { id } = req.user; 
    try {
        const respone = await services.getOne(id);
        return res.status(200).json(respone);
    } catch (error) {
        return res.status(500).json({
            err : -1,
            msg : 'Failed at user controller: ' + error
        })
    }
}

export const updateCurrent = async (req,res)=>{
    const { id } = req.user;
    const payload = req.body;
    try {
        if(!payload) return res.status(400).json({
            err : 1,
            msg : "Thieu payload"
        })
        const respone = await services.updateUser(payload,id);
        return res.status(200).json(respone);
    } catch (error) {
        return res.status(500).json({
            err : -1,
            msg : 'Failed at user controller: ' + error
        })
    }
}