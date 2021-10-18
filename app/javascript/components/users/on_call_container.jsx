import { connect } from 'react-redux'
import { onCallUsers } from '../../reducers/selectors'
import OnCall from './on_call'


const mapStateToProps = state => ({
    users: onCallUsers(state.users)
})

// const mapDispatchToProps = dispatch => ({
//     fetchUsers: () => dispatch(getAllUsers())
// })


export default connect(mapStateToProps, null)(OnCall)