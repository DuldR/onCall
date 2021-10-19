import { connect } from 'react-redux'
import { selectAllSwaps } from '../../reducers/selectors'
import { getAllSwaps } from '../../actions/swap_actions'
import SwapRequest from './swap_request'


const mapStateToProps = state => ({
    swaps: selectAllSwaps(state)
})

const mapDispatchToProps = dispatch => ({
    fetchSwaps: () => dispatch(getAllSwaps())
})


export default connect(mapStateToProps, mapDispatchToProps)(SwapRequest)