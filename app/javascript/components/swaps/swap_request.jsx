import React from 'react'
import SwapRequestItem from './swap_request_item'

class SwapRequest extends React.Component {

    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.fetchSwaps();
    }

    render () {

        if (this.props.requests.length == 0) { return <h1> No Requests!</h1>}

        const listRequests = this.props.requests.map((request, idx) => {
            return <SwapRequestItem approve={this.props.updateSwap} user={this.props.user} userShift={this.props.shifts[request.target_shift_id]} target={this.props.users[request.user_id]} targetShift={this.props.shifts[request.shift_id]} request={request} key={"request-item-" + idx}/>
        })
        
        
        return (
            <ul className="swap-list">
                {listRequests}
            </ul>
        )
    }

}

export default SwapRequest