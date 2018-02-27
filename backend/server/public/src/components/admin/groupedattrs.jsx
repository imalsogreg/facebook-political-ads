import React from "react";
import { connect } from "react-redux";
import { withRouter, Link } from "react-router-dom";
import { getGroupedAttrs, newSearch } from "actions.js";

export class GroupedAttrsUnconnected extends React.Component {
  componentDidMount() {
    // TODO: follow this pattern to get various kinds of grouped attrs (advertisers, recent advertisers, etc.)
    let groupingType = "advertisers"; // default
    if (this.props.match) {
      // `match` is from React Router -- it's the bit of the URL that matches.
      groupingType = this.props.match.params.groupingType;
      // the varieties of allowed groupingTypes are defined in Rust, in server.rs
    }
    this.props.getGroupedAttrs(groupingType);
  }

  render() {
    return (
      <table id="advertisers" className="breakdown">
        <thead>
          <tr>
            <th>Advertiser</th>
            <th>Count</th>
          </tr>
        </thead>
        <tbody>
          {this.props.groupedAttribute ? (
            this.props.groupedAttribute.map(advertiser => (
              <tr key={advertiser.advertiser}>
                <td>
                  <Link
                    to={`/facebook-ads/admin/ads?search=${
                      advertiser.advertiser
                    }&advertisers=%5B"${advertiser.advertiser}"%5D`}
                  >
                    {advertiser.advertiser}
                  </Link>
                </td>
                <td>{advertiser.count}</td>
              </tr>
            ))
          ) : (
            <tr>
              <td>Loading...</td>
            </tr>
          )}
        </tbody>
      </table>
    );
  }
}

const GroupedAttrs = withRouter(
  connect(
    ({ groupedAttribute }) => ({
      groupedAttribute
    }),
    dispatch => ({
      onClick: term => dispatch(newSearch(term)),
      getGroupedAttrs: kind => dispatch(getGroupedAttrs(kind))
    })
  )(GroupedAttrsUnconnected)
);
export default GroupedAttrs;
