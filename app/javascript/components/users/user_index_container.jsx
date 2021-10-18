import { connect } from 'react-redux'
import { getAllUsers } from '../../actions/user_actions'
import { selectAllUsers } from '../../reducers/selectors'
import UserIndex from './user_index'


const mapStateToProps = state => ({
    users: selectAllUsers(state)
})

const mapDispatchToProps = dispatch => ({
    fetchUsers: () => dispatch(getAllUsers())
})


export default connect(mapStateToProps, mapDispatchToProps)(UserIndex)