import * as services from '../services/price';

export const getPrices = async (req,res)=>{
    try {
        const respone = await services.getPriceService();
        return res.status(200).json(respone);
    } catch (error) {
        return res.status(500).json({
            err : -1,
            msg : 'Failed at price controller: ' + error
        })
    }
}