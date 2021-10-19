import React from 'react'
// import { ShiftIndexItem } from './shift_item'

class ShiftIndex extends React.Component {

    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.fetchShifts();
    }


    render () {

        if (this.props.shifts.length == 0) { return <h1> Loading </h1>}

        // const users = this.props.users.map((user, idx) => {
        //     return <UserIndexItem name={user.name} key={"user-item-" + idx} />
        // })


        return (
            <ul>
                ShiftTest
            </ul>
        )
    }
}

export default ShiftIndex

