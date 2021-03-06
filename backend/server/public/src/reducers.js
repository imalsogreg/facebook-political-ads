import {
  SET_LANG,
  NEW_SEARCH,
  BATCH,
  NEW_ADS,
  HIDE_AD,
  TOGGLE_TARGET,
  TOGGLE_ADVERTISER,
  TOGGLE_ENTITY,
  RESET_DROPDOWNS,
  NEXT_PAGE,
  PREV_PAGE,
  SET_PAGE,
  SET_TOTAL,
  GOT_THAT_AD,
  REQUESTING_ONE_AD,
  GOT_RECENT_GROUPED_ATTR,
  REQUESTING_RECENT_GROUPED_ATTR,
  CHANGE_POLITICAL_PROBABILITY,
  CLEAR_ALL_FILTERS,
  REQUESTING_SUMMARY,
  GOT_SUMMARY,
  RECEIVE_STATES_AND_DISTRICTS,
  REQUESTING_STATES_AND_DISTRICTS
} from "./actions.js";

// https://github.com/reactjs/redux/issues/911#issuecomment-149192251
export const enableBatching = reducer => {
  return function batchingReducer(state, action) {
    switch (action.type) {
      case BATCH:
        return action.actions.reduce(batchingReducer, state);
      default:
        return reducer(state, action);
    }
  };
};

export const lang = (state = null, action) => {
  switch (action.type) {
    case SET_LANG:
      return action.value;
    default:
      return state;
  }
};

export const search = (state = null, action) => {
  switch (action.type) {
    case NEW_SEARCH:
      return action.value;
    default:
      return state;
  }
};

export const ads = (state = [], action) => {
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

export const ad = (state = {}, action) => {
  switch (action.type) {
    case GOT_THAT_AD:
      return action.ad;
    case REQUESTING_ONE_AD:
      return null;
    default:
      return state;
  }
};

export const groupedAttribute = (state = [], action) => {
  switch (action.type) {
    case GOT_RECENT_GROUPED_ATTR:
      return action.groupedAttrs;
    case REQUESTING_RECENT_GROUPED_ATTR:
      return null;
    default:
      return state;
  }
};

export const summary = (state = {}, action) => {
  switch (action.type) {
    case GOT_SUMMARY:
      return action.summary;
    case REQUESTING_SUMMARY:
      return null;
    default:
      return state;
  }
};

export const statesAndDistricts = (state = {}, action) => {
  switch (action.type) {
    case RECEIVE_STATES_AND_DISTRICTS:
      return action.statesAndDistricts;
    case REQUESTING_STATES_AND_DISTRICTS:
      return null;
    default:
      return state;
  }
};

export const filters = (state = {}, action) => {
  switch (action.type) {
    case TOGGLE_TARGET:
      return { ...state, target: !state.target };
    case TOGGLE_ADVERTISER:
      return { ...state, advertiser: !state.advertiser };
    case TOGGLE_ENTITY:
      return { ...state, entity: !state.entity };
    case RESET_DROPDOWNS:
      return {};
    default:
      return state;
  }
};

const makeObjectReducer = (plural, singular) => {
  return (state = [], action) => {
    switch (action.type) {
      case `new_${plural}`: {
        const lookup = new Set(
          state.filter(filter => filter.active).map(it => it[singular])
        );
        const filtersWithSegments = state.filter(filter => filter.segment);
        return action.value.map(filter => {
          let oldFilter = filtersWithSegments.find(
            old => old[singular] === filter[singular]
          );
          return singular !== "target" || !oldFilter
            ? {
              ...filter,
              key: filter[singular],
              active: lookup.has(filter[singular])
            }
            : {
              ...filter,
              key: filter[singular],
              active: lookup.has(filter[singular]),
              segment: oldFilter.segment
            };
        });
      }
      case `filter_${singular}`:
        return state.map(filter => {
          if (filter[singular] === action.value[singular]) {
            return {
              ...filter,
              active: !filter.active
            };
          } else {
            return filter;
          }
        });
      case CLEAR_ALL_FILTERS:
        return [];
      default:
        return state;
    }
  };
};

const makeArrayReducer = plural => {
  return (state = [], action) => {
    switch (action.type) {
      case `new_${plural}`: {
        return action.value;
      }
      case `filter_${plural}`:
        return state;
      case CLEAR_ALL_FILTERS:
        return [];
      default:
        return state;
    }
  };
};

export const entities = makeObjectReducer("entities", "entity");
export const advertisers = makeObjectReducer("advertisers", "advertiser");
export const targets = makeObjectReducer("targets", "target");
export const states = makeArrayReducer("states");
export const parties = makeArrayReducer("parties");
export const districts = makeArrayReducer("districts");

const PER_PAGE = 20;
const min = state => Math.min(state.page, state.total);
export const pagination = (state = { page: 0, total: 0, total_ads: 0 }, action) => {
  switch (action.type) {
    case NEXT_PAGE:
      return { ...state, page: min({ ...state, page: state.page + 1 }) };
    case PREV_PAGE:
      return { ...state, page: Math.max(state.page - 1, 0) };
    case SET_PAGE:
      return {
        ...state,
        page: min({ page: action.value, total: state.total })
      };
    case SET_TOTAL: {
      const total_ads = action.value;
      const total = Math.ceil(action.value / PER_PAGE);
      return { total, total_ads, page: 0 };
    }
    default:
      return state;
  }
};

export const politicalProbability = (state = [], action) => {
  switch (action.type) {
    case CHANGE_POLITICAL_PROBABILITY: {
      return action.value;
    }
    default:
      return state;
  }
};
