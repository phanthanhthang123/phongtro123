import actionTypes from "./actionTypes";
import * as apis from "../../services";

export const getCurrent = ()=> async (dispatch) => {
    try {
        const response = await apis.apiGetCurrent();
        // console.log(response);
        if(response?.data?.err === 0){
            dispatch({ 
                type : actionTypes.GET_CURRENT,
                currentData : response.data.respone
            })
        }else{
            dispatch({
                type : actionTypes.GET_CURRENT,
                msg : response.data.msg,
                currentData: null
            })
        }
    } catch (error) {
        dispatch({
            type: actionTypes.GET_CURRENT,
            msg : error,
            currentData: null
        })
    }
}