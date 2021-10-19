import { connect } from 'react-redux'
// import { selectAllSwaps, userRequests } from '../../reducers/selectors'
// import { getAllSwaps } from '../../actions/swap_actions'
import SwapRequestForm from './swap_form'


const mapStateToProps = (state, ownProps) => ({
    user: state.users[ownProps.match.params.userId],
    shifts: state.shifts
})

const mapDispatchToProps = dispatch => ({

})


export default connect(mapStateToProps, null)(SwapRequestForm)