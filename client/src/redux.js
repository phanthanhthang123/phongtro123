import rootReducer from "./store/reducers/rootReducer";
import { persistStore } from "redux-persist"; //giu lai state
import { createStore } from "redux";

const reduxStore = () => {
  const store = createStore(rootReducer);
  const persistor = persistStore(store);
  return { store, persistor };
};

export default reduxStore
