import React from 'react'
import { ShiftIndexItem } from './shift_index_item'

class ShiftIndex extends React.Component {

    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.fetchShifts();
    }


    render () {

        if (this.props.shifts.length == 0) { return <h1> Loading </h1>}

        const shifts = this.props.shifts.map((shift, idx) => {
            return <ShiftIndexItem shift_start={shift.shift_start} shift_end={shift.shift_end} user={this.props.users[shift.user_id]} key={"shift-item-" + idx} />
        })


        return (
            <ul className="shift-container">
                <label>Shifts for October</label>
                {shifts}
            </ul>
        )
    }
}

export default ShiftIndex

