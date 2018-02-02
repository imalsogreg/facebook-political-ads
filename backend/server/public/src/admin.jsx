import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter } from "react-router-dom";
import { applyMiddleware, compose, combineReducers, createStore } from "redux";
import thunkMiddleware from "redux-thunk";
import persistState from "redux-localstorage";
import { Provider } from "react-redux";
import { createLogger } from "redux-logger";
import { enableBatching } from "utils.js";
import {
  entities,
  targets,
  advertisers,
  filters,
  pagination,
  search,
  lang,
  ads,
  ad,
  credentials,
  permalinked_ad
} from "reducers.js";
import { go } from "i18n.js";
import Admin from "components/admin/admin.jsx";

const reducer = enableBatching(
  combineReducers({
    ads,
    ad,
    permalinked_ad,
    search,
    entities,
    advertisers,
    targets,
    filters,
    pagination,
    credentials,
    lang
  })
);

const middleware = [thunkMiddleware, createLogger()];
const store = createStore(
  reducer,
  compose(...[persistState("credentials"), applyMiddleware(...middleware)])
);

go(() => {
  ReactDOM.render(
    <BrowserRouter>
      <Provider store={store}>
        <Admin />
      </Provider>
    </BrowserRouter>,
    document.querySelector("#react-root")
  );
});
