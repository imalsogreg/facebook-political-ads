import React from "react";
import { connect } from "react-redux";
import Ad from "components/ad.jsx";
import { withRouter, Link } from "react-router-dom";
import { getOneAd } from "../actions.js";

export class AdDetailUnconnected extends React.Component {
  componentDidMount() {
    // if this.props.ad, we're good, we got the ad prop from <Frontend> or it's already been fetched.
    // if !this.props.ad && !this.props.getOneAd, then something has gone wrong.
    if (
      !(this.props.ad && this.props.ad.id) &&
      this.props.getOneAd &&
      this.props.match
    ) {
      let ad_id = null;
      // `match` is from React Router -- it's the bit of the URL that matches.
      ad_id = this.props.match.params.ad_id;
      this.props.getOneAd(ad_id);
    }
  }

  render() {
    let ad_or_error = null;

    if (this.props.ad) {
      if (this.props.ad.id) {
        ad_or_error = (
          <div id="ad">
            <Ad ad={this.props.ad} />
          </div>
        );
      } else {
        ad_or_error = (
          <h2 className="notfound">
            Uh oh, an ad with that ID couldn&apos;t be found!
          </h2>
        );
      }
    } else {
      ad_or_error = <h2 className="error">Uh oh, something went wrong.</h2>;
    }
    return (
      <div>
        <p>
          <br />
          <Link className="all-link" to="/facebook-ads">
            Explore All Ads
          </Link>
        </p>
        <div className="facebook-pac-ads">{ad_or_error}</div>
      </div>
    );
  }
}
const AdDetail = withRouter(
  connect(
    ({ ad }) => ({
      // this is a mapStateToProps function. { ad } is destructuring the `store` hash and getting the `ads` element.
      ad
    }),
    dispatch => ({
      // ownProps is available as a second argument here.
      getOneAd: ad => dispatch(getOneAd(ad))
    })
  )(AdDetailUnconnected)
);

export default AdDetail;
