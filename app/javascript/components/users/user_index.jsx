import React from 'react'
import { UserIndexItem } from './user_item'

class UserIndex extends React.Component {

    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.fetchUsers();
    }


    render () {

        if (this.props.users.length == 0) { return <h1> Loading </h1>}

        const users = this.props.users.map((user, idx) => {
            return <UserIndexItem name={user.name} key={"user-item-" + idx} />
        })


        return (
            <ul>
                {users}
            </ul>
        )
    }
}

export default UserIndex

