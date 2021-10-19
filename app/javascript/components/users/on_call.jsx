import React from 'react'


class OnCall extends React.Component {

    constructor(props) {
        super(props)
    }

    listUsers() {


        const onCall = this.props.onCall.map((user, idx) => {
            return <li key={"on-call-" + idx}>
                {user.name}
            </li>
        })

        return onCall

        
    }

    listOnCallUsers() {

        if (this.props.onCall.length == 0) {
            return <li>
                No one on call today!
            </li>
        } else {
            return this.listUsers();
        }
    }

    render () {

        return (
            <div className="on-call-container">
                <span> Who's on call today: </span>
                <ul>
                    {this.listOnCallUsers()}
                </ul>
            </div>
                
        )
    }
}

export default OnCall
