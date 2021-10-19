import React from 'react'


class OnCall extends React.Component {

    constructor(props) {
        super(props)
    }

    listUsers() {
        // const onCall = this.props.onCall.map((user, idx) => {
        //     return <li>
        //         {user.name}
        //     </li>
        // })
    }

    listOnCallUsers() {
        if (this.props.onCall.length == 0) {
            return <li>
                No one on call today!
            </li>
        } else {
            this.listUsers()
        }
    }

    render () {

        return (
            <ul className="on-call-container">
                {this.listOnCallUsers()}
            </ul>
        )
    }
}

export default OnCall
