import { connect } from 'react-redux'
import { selectAllShifts } from '../../reducers/selectors'
import { createSwap } from '../../actions/swap_actions'
import SwapRequestForm from './swap_form'


const mapStateToProps = (state, ownProps) => ({
    user: state.users[ownProps.match.params.userId],
    targets: state.users,
    shifts: selectAllShifts(state)
})

const mapDispatchToProps = dispatch => ({
    createSwap: (swap) => dispatch(createSwap(swap))
})


export default connect(mapStateToProps, mapDispatchToProps)(SwapRequestForm)