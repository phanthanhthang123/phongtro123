import actionTypes from "../actions/actionTypes";

const initState = {
    posts : [],
    msg: '',
    count: 0,
    newPosts : [],
    postOfCurrent : [],
    dataEdit : {}
}

const postReducer = (state = initState, action)=>{
    switch (action.type){
        case actionTypes.GET_POSTS:
        case actionTypes.GET_POST_LIMIT:
            return {
                ...state,
                posts: action.posts || [],
                msg : action.msg || ' ',
                count: action.count || 0
            };
        case actionTypes.GET_NEW_POST:
            return{
                ...state,
                msg : action.msg || ' ',
                newPosts: action.newPosts || []
            }
        case actionTypes.GET_POST_ADMIN:
            return {
                ...state,
                msg : action.msg || ' ',
                postOfCurrent : action.posts || []
            }
        case actionTypes.EDIT_DATA_POST:
            return {
                ...state,
                dataEdit: action.dataEdit || {}
            }
        default :
            return state
    }
}

export default postReducer