import rootReducer from "./store/reducers/rootReducer";
import { persistStore } from "redux-persist"; //giu lai state
import { createStore, applyMiddleware } from "redux";
import {thunk} from "redux-thunk";

const reduxStore = () => {
  const store = createStore(rootReducer, applyMiddleware(thunk));
  const persistor = persistStore(store);

  return { store, persistor };
};

export default reduxStore;
