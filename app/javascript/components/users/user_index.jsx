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

        const listUsers = this.props.users.map((user, idx) => {
            return <UserIndexItem userId={user.id} user={user} key={"user-item-" + idx} />
        })


        return (
            <ul>
                {listUsers}
            </ul>
        )
    }
}

export default UserIndex

