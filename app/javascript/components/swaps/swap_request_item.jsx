import React from 'react'


class SwapRequestItem extends React.Component {
    constructor(props) {
        super(props)

        this.handleApprove = this.handleApprove.bind(this)
        this.handleDecline = this.handleDecline.bind(this)
    }

    handleApprove(e) {
        e.preventDefault();
        let request = this.props.request
        request.target_approve = 1

        this.props.approve(request.id, {swap: request})
        

    }

    handleDecline(e) {
        e.preventDefault();
        let request = this.props.request
        request.target_approve = -1

        this.props.approve(request.id, {swap: request})
        

    }

    render () {


        return ( 

    
            <li>
                <label>Approval Status: {this.props.request.target_approve == 0 ? "Pending" : (this.props.request.target_approve == 1 ? "Approved" : "Rejected")} </label>
                <ul className="swap-list-container">

                    <span>
                        <label className="swap-user-name"> Employee Name </label>
                        <li>
                            {this.props.target == undefined ? <h1>Loading</h1> : this.props.user.name}
                        </li>
                        <label> Shift Start </label>
                        <li>
                            {this.props.userShift == undefined ? <h1>Loading</h1> : this.props.userShift.shift_start}
                        </li>
                        
                        <li>
                            {this.props.userShift == undefined ? <h1>Loading</h1> : this.props.userShift.shift_end}
                        </li>
                    </span>

                    <span>
                        <label className="swap-user-name"> Requestor Name </label>
                        <li>
                            {this.props.target == undefined ? <h1>Loading</h1> : this.props.target.name}
                        </li>
                        <label> Shift Start </label>
                        <li>
                            {this.props.targetShift == undefined ? <h1>Loading</h1> : this.props.targetShift.shift_start}
                        </li>
                        <label> Shift End </label>
                        <li>
                            {this.props.targetShift == undefined ? <h1>Loading</h1> : this.props.targetShift.shift_end}
                        </li>
                    </span>
                </ul>

                <button onClick={this.handleApprove}>Approve</button>
                <button onClick={this.handleDecline}>Decline</button>
            </li>
        )
    }
}

export default SwapRequestItem