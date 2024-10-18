import React from "react";
import ReactDOM from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import "./index.css";
import App from "./App";
import { PersistGate } from "redux-persist/integration/react"; //dayley chilren viec render UI cho toi khi store duoc update
import { Provider } from "react-redux";
import reduxStore from "./redux";

const { store, persistor } = reduxStore();

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  <Provider store={store}>
    <PersistGate loading={null} persistor={persistor}>
      <BrowserRouter>
        <App />
      </BrowserRouter>
    </PersistGate>
  </Provider>
);
