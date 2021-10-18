import React from 'react'


class OnCall extends React.Component {

    constructor(props) {
        super(props)
    }

    listOnCallUsers() {
        if (this.props.users.length == 0) {
            return <li>
                No one on call today!
            </li>
        } else {
            <li>
                On Call users
            </li>
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
