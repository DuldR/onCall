import { connect } from 'react-redux'
// import { getAllUsers } from '../../actions/user_actions'
// import { selectAllUsers } from '../../reducers/selectors'
import SwapRequest from './swap_request'


const mapStateToProps = state => ({
    swaps: {}
})

const mapDispatchToProps = dispatch => ({
    fetchSwaps: () => dispatch(getAllSwaps())
})


export default connect(mapStateToProps, mapDispatchToProps)(SwapRequest)