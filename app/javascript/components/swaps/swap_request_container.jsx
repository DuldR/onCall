import { connect } from 'react-redux'
import { selectAllSwaps, userRequests } from '../../reducers/selectors'
import { getAllSwaps, judgeSwap } from '../../actions/swap_actions'
import { getAllShifts } from '../../actions/shift_actions'
import SwapRequest from './swap_request'


const mapStateToProps = (state, ownProps) => ({
    swaps: selectAllSwaps(state),
    requests: userRequests(state.swaps, ownProps.match.params.userId),
    user: state.users[ownProps.match.params.userId],
    shifts: state.shifts,
    users: state.users,
})

const mapDispatchToProps = dispatch => ({
    fetchSwaps: () => dispatch(getAllSwaps()),
    updateSwap: (id, data) => dispatch(judgeSwap(id, data)),
    fetchShifts: () => dispatch(getAllShifts())
})


export default connect(mapStateToProps, mapDispatchToProps)(SwapRequest)