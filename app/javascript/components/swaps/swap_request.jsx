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
            return <SwapRequestItem approve={this.props.updateSwap} user={this.props.user} userShift={this.props.shifts[request.user_id]} target={this.props.users[request.target_id]} targetShift={this.props.shifts[request.target_shift_id]} request={request} key={"request-item-" + idx}/>
        })
        
        
        return (
            <h1 className="swap-list">
                {listRequests}
            </h1>
        )
    }

}

export default SwapRequest