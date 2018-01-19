import React from 'react';
import ReactDOM from 'react-dom';
import { applyMiddleware, compose, combineReducers, createStore } from 'redux';
import thunkMiddleware from 'redux-thunk';
import persistState from 'redux-localstorage';
import { Provider, connect } from 'react-redux';
import { createLogger } from 'redux-logger';
import {
  headers, NEW_ADS, refresh, newSearch, search,
  enableBatching, deserialize, lang,
  GOT_THAT_AD, getOneAd
} from 'utils.js';
import { entities, targets, advertisers, filters } from 'filters.jsx';
import { Pagination, pagination } from 'pagination.jsx';


import { go } from 'i18n.js';

import { debounce } from "lodash";

// I'll figure out a better way to do this but I'm learning React so 🐻 with me.
// we're probably going to want a router? maybe?
const searchParams = new URLSearchParams(location.search);

const HIDE_AD = "hide_ad";
const LOGIN = "login";
const LOGOUT = "logout";
const GET_ONE_AD = "GET_ONE_AD";

const b64 = (thing) => btoa(thing).replace(/\+/g, '-').replace(/\//g, '_').replace(/=/g, '');
const createJWT = (username, password) => {
  const encoder = new TextEncoder();
  const header = {
    alg: "HS256",
    typ: "JWT"
  };
  const payload = {
    username
  };
  const base = `${b64(JSON.stringify(header))}.${b64(JSON.stringify(payload))}`;
  const encoded = encoder.encode(base);
  return window.crypto.subtle.importKey(
    "raw",
    encoder.encode(password),
    { name: "HMAC", hash: { name: "SHA-256" } },
    false,
    ["sign"]
  ).then(key => window.crypto.subtle.sign({ name: 'HMAC' }, key, encoded))
    .then(signature => ({ token: `${base}.${b64(String.fromCharCode.apply(null, new Uint8Array(signature)))}` }));
};

const hideAd = (ad) => ({
  type: HIDE_AD,
  id: ad.id
});

// const getOneAd = (ad_id) => ({
//   type: GET_ONE_AD,
//   id: ad_id
// })

const suppressAd = (ad) => {
  return (dispatch, getState) => {
    dispatch(hideAd(ad));
    return fetch("/facebook-ads/admin/ads", {
      method: "POST",
      body: ad.id,
      headers: headers(getState().credentials)
    }).then((resp) => {
      if (resp.ok) {
        console.log("suppressed");
      } else {
        dispatch(logout());
      }
    });
  };
};

const login = (credentials) => ({
  type: LOGIN,
  value: credentials
});

const logout = () => ({
  type: LOGOUT
});

const authorize = (username, password) => {
  // create jwt
  return (dispatch) => createJWT(username, password).then(token => {
    return fetch("/facebook-ads/login", {
      method: "POST",
      headers: headers(token)
    }).then((resp) => {
      if (resp.ok) {
        dispatch(login(token));
      }
    });
  });
};

const credentials = (state = {}, action) => {
  switch (action.type) {
    case LOGIN:
      return action.value;
    case LOGOUT:
      return {};
    default:
      return state;
  }
};

// this is a reducer.
const ads = (state = [], action) => {
  switch (action.type) {
    case NEW_ADS:
      return action.value;
    case HIDE_AD:
      return state.map(ad => {
        if (ad.id === action.id) {
          return { ...ad, suppressed: true };
        }
        return ad;
      });
    default:
      return state;
  }
};

const permalinked_ad = (state = {}, action) => {
  switch (action.type) {
    case GOT_THAT_AD:
      return Object.assign({}, state, { ad: action.ad, requested_ad_loaded: true })
    case GET_ONE_AD:
      return Object.assign({}, state, { requested_id: action.id, requested_ad_loaded: false })
    default:
      return state;
  }
}

const reducer = enableBatching(combineReducers({
  ads,
  permalinked_ad,
  search,
  entities,
  advertisers,
  targets,
  filters,
  pagination,
  credentials,
  lang
}));

const middleware = [thunkMiddleware, createLogger()];
const store = createStore(reducer, compose(...[persistState("credentials"), applyMiddleware(...middleware)]));

const Ad = ({ ad, onClick }) => (
  <div className="ad">
    <table>
      <tbody>
        <tr>
          <td>id</td>
          <td>{ad.id}</td>
        </tr>
        <tr>
          <td>first seen</td>
          <td>{new Date(Date.parse(ad.created_at)).toString()}</td>
        </tr>
        <tr>
          <td>title</td>
          <td>{ad.title}</td>
        </tr>
        <tr>
          <td>text</td>
          <td dangerouslySetInnerHTML={{ __html: ad.html }} />
        </tr>
        <tr>
          <td>targeting</td>
          <td dangerouslySetInnerHTML={{ __html: ad.targeting }} />
        </tr>
        <tr>
          <td>
            political / not political
        </td>
          <td>
            {ad.political} / {ad.not_political}
          </td>
        </tr>
        <tr>
          <td>
            likelihood
        </td>
          <td>
            {ad.political_probability}
          </td>
        </tr>
        <tr>
          <td>
            impressions
        </td>
          <td>
            {ad.impressions}
          </td>
        </tr>
        <tr>
          <td colSpan="2">
            {ad.suppressed ? "Suppressed" : <button onClick={function () { return onClick(ad); }}>
              Suppress
          </button>}
          </td>
        </tr>
      </tbody>
    </table>
  </div>
);

let AdDetail = ({ ad }) => {
  if (ad) {
    return (<div id="ad">
      <input id="search" placeholder="Search for ads" />

      <Ad ad={ad} />

    </div>);
  } else {
    return (<div><h2>Uh oh, an ad with that ID couldn't be found!</h2></div>);
  }
};

AdDetail = connect(
  ({ permalinked_ad }) => (
    { // this is a mapStateToProps function. { ads } is destructuring the `store` hash and getting the `ads` element.
      ad: permalinked_ad.ad
    })
)(AdDetail);

let Ads = ({ ads, onClick, onKeyUp, search }) => (
  <div id="ads">
    <input id="search" placeholder="Search for ads" onKeyUp={onKeyUp} search={search} />
    <Pagination />
    {ads.map((ad) => <Ad ad={ad} key={ad.id} onClick={onClick} />)}
  </div>
);
const throttledDispatch = debounce((dispatch, input) => { dispatch(newSearch(input)); }, 750);
Ads = connect(
  ({ ads, search }) => ({
    ads: ads.filter((ad) => !ad.suppressed),
    search
  }),
  (dispatch) => ({
    onClick: (ad) => dispatch(suppressAd(ad)),
    onKeyUp: (e) => {
      e.preventDefault();
      throttledDispatch(dispatch, e.target.value.length ? e.target.value : null);
    }
  })
)(Ads);

let Login = ({ dispatch }) => {
  let email, password;
  const onLogin = (e) => {
    e.preventDefault();
    dispatch(authorize(email.value, password.value));
  };
  return <form id="login" onSubmit={onLogin} >
    <input id="email" type="text" ref={(node) => email = node} placeholder="email" />
    <input id="password" type="password" ref={(node) => password = node} placeholder="password" />
    <input id="submit" type="submit" value="login" />
  </form>;
};
Login = connect()(Login);


let App = ({ credentials }) => (
  <div id="app">
    <h1><a href="/facebook-ads/admin?">FBPAC Admin</a></h1>
    {credentials && credentials.token ? (searchParams.get("detail") ? <AdDetail /> : <Ads />) : <Login />}
  </div>
);
App = connect((state) => state)(App);

go(() => {
  ReactDOM.render(
    <Provider store={store}>
      <App />
    </Provider>,
    document.querySelector("#react-root")
  );

  deserialize(store.dispatch);
  if (searchParams.get("detail")) {
    store.dispatch(getOneAd(store, searchParams.get("detail")));
  }
  refresh(store).then(() => store.subscribe(() => refresh(store)));
});
