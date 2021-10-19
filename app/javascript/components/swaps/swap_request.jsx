import React from 'react'
import { SwapRequestItem } from './swap_request_item'

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
            return <SwapRequestItem request={request} key={"request-item-" + idx}/>
        })
        
        
        return (
            <h1>
                {listRequests}
            </h1>
        )
    }

}

export default SwapRequest