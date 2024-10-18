import authReducer from "./authReducer";
import userReducer from "./userReducer";
import { combineReducers } from "redux";    //gom redecer
import storage from "redux-persist/lib/storage"; //mac dinh la localStore
import autoMergeLevel2 from "redux-persist/es/stateReconciler/autoMergeLevel2";
import { persistReducer } from "redux-persist"; //giu lai reducer

//config chung
const commonConfig = {
  storage,
  stateReconciler: autoMergeLevel2,
};

const authConfig = {
  ...commonConfig,
  key: 'auth',
  whitelist: ['isLoggedIn', 'token',] //white list : chon ra cac state nao cua reducer duoc luu o localstore age
};

const rootReducer = combineReducers({
  auth: persistReducer(authConfig, authReducer),
  user: userReducer
});

export default rootReducer;
