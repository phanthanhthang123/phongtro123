import * as insertServices from '../services/insert'
import genarateCode from "../ultis/genarateCode";

export const insert = async (req,res)=>{
    try {
        const response = await insertServices.insertServices();

        return res.status(200).json(response);

    } catch (error) {
        return res.status(500).json({
            err: -1,
            msg : 'Fail at auth controller :' + error
        })
    }
}