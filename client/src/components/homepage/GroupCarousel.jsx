import React, { Component } from 'react';
import GroupItem from './GroupItem.jsx';

class GroupCarousel extends Component {
  constructor(props) {
    super(props);
    this.state = {

    };
  }

  render() {

    const { groups } = this.props;

    const groupItems = [];
    let keyCount = 0;
    groups.forEach((g) => {
      groupItems.push((
        <GroupItem key={keyCount++} group={g} />
      ));
    });

    return (
      <div className="row mb-3 mt-3">
        <div className="col-12 text-center text-white bg-secondary rounded-pill pt-2">
          <h5>MY GROUPS</h5>
        </div>
        <div className="row justify-content-md-center">
          {groupItems.length > 0 && groupItems}
        </div>
      </div>
    );
  }
}

export default GroupCarousel;