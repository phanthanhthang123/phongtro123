import actionTypes from "./actionTypes";
import { apiGetPosts,apiGetPostsLimit } from "../../services/post";

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
