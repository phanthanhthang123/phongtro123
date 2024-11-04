import actionTypes from "./actionTypes";
import * as apis from "../../services";

export const getCategories = ()=> async (dispatch) => {
    try {
        const response = await apis.apiGetCategories();
        // console.log(response);
        if(response?.data?.err === 0){
            dispatch({ 
                type : actionTypes.GET_CATEGORIES,
                categories : response.data.respone
            })
        }else{
            dispatch({
                type : actionTypes.GET_CATEGORIES,
                msg : response.data.msg,
                categories: null
            })
        }
    } catch (error) {
        dispatch({
            type: actionTypes.GET_CATEGORIES,
            categories: null
        })
    }
}

export const getPrices = ()=> async (dispatch) => {
    try {
        const response = await apis.apiGetPrices();
        if(response?.data?.err === 0){
            dispatch({ 
                type : actionTypes.GET_PRICES,
                prices : response.data.respone.sort((a,b)=>{
                    return (+a.order - +b.order)
                } )
            })
        }else{
            dispatch({
                type : actionTypes.GET_PRICES,
                msg : response.data.msg,
                prices: null
            })
        }
    } catch (error) {
        dispatch({
            type: actionTypes.GET_PRICES,
            prices: null
        })
    }
}

export const getAreas = ()=> async (dispatch) => {
    try {
        const response = await apis.apiGetAreas();
        if(response?.data?.err === 0){
            dispatch({ 
                type : actionTypes.GET_AREAS,
                areas : response.data.respone.sort((a,b)=>{
                    return (+a.order - +b.order)
                } )
            })
        }else{
            dispatch({
                type : actionTypes.GET_AREAS,
                msg : response.data.msg,
                areas: null
            })
        }
    } catch (error) {
        dispatch({
            type: actionTypes.GET_AREAS,
            areas: null
        })
    }
}