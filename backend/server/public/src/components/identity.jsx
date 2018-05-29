import React from "react";
import { connect } from "react-redux";
import { fetchTarget } from "actions.js";

export const SegmentUnconnected = ({segments, title}) => (

  <fieldset className="segments-identity">
    <select onChange={() => newSearch(this.value)}>
      <option value="">{title}</option>
      {segments.map(
        filter => (
          <option value="{filter}">
            {filter.segment}
          </option>
        )
      )}
    </select>
  </fieldset>
);
const Segment = connect(
  () => ({}),
  dispatch => ({
    newSearch: term => dispatch(fetchTarget(term))
  })
)(SegmentUnconnected);
export default Segment;