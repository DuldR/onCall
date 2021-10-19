import { connect } from 'react-redux'
import { selectAllSwaps, userRequests } from '../../reducers/selectors'
import { getAllSwaps } from '../../actions/swap_actions'
import SwapRequest from './swap_request'


const mapStateToProps = (state, ownProps) => ({
    swaps: selectAllSwaps(state),
    requests: userRequests(state.swaps, ownProps.match.params.userId)
})

const mapDispatchToProps = dispatch => ({
    fetchSwaps: () => dispatch(getAllSwaps())
})


export default connect(mapStateToProps, mapDispatchToProps)(SwapRequest)