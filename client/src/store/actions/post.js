import actionTypes from "./actionTypes";
import { apiGetPosts,apiGetPostsLimit,apiGetNewPosts,apiGetPostsLimitAdmin } from "../../services/post";

export const getPost = ()=> async (dispatch) => {
    try {
        const response = await apiGetPosts();
        // console.log(response)
        if(response?.data.err === 0){
            dispatch({ 
                type : actionTypes.GET_POSTS,
                posts : response.data.response
            })
        }else{
            dispatch({
                type : actionTypes.GET_POSTS,
                msg : response.data.msg
            })
        }
    } catch (error) {
        dispatch({
            type: actionTypes.GET_POSTS,
            posts : null
        })
    }
}

export const getPostLimit = (query)=> async (dispatch) => {
    try {
        const response = await apiGetPostsLimit(query);
        // console.log(response)
        if(response?.data.err === 0){
            dispatch({ 
                type : actionTypes.GET_POST_LIMIT,
                posts : response.data.response?.rows,
                count : response.data.response?.count
            })
        }else{
            dispatch({
                type : actionTypes.GET_POST_LIMIT,
                msg : response.data.msg
            })
        }
    } catch (error) {
        dispatch({
            type: actionTypes.GET_POST_LIMIT,
            posts : null
        })
    }
}

export const getNewPosts = ()=> async (dispatch) => {
    try {
        const response = await apiGetNewPosts();
        // console.log(response)
        if(response?.data.err === 0){
            dispatch({ 
                type : actionTypes.GET_NEW_POST,
                newPosts : response.data.response,
            })
        }else{
            dispatch({
                type : actionTypes.GET_NEW_POST,
                msg : response.data.msg,
                newPosts: null
            })
        }
    } catch (error) {
        dispatch({
            type: actionTypes.GET_NEW_POST,
            newPosts : null
        })
    }
}


export const getPostLimitAdmin = ()=> async (dispatch) => {
    try {
        const response = await apiGetPostsLimitAdmin();
        // console.log(response)
        if(response?.data.err === 0){
            dispatch({ 
                type : actionTypes.GET_POST_ADMIN,
                posts : response.data.response?.rows,
                count : response.data.response?.count
            })
        }else{
            dispatch({
                type : actionTypes.GET_POST_ADMIN,
                posts: null,
                msg : response.data.msg
            })
        }
    } catch (error) {
        dispatch({
            type: actionTypes.GET_POST_ADMIN,
            posts : null
        })
    }
}