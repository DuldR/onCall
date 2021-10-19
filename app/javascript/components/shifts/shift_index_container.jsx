import { connect } from 'react-redux'
import { getAllShifts } from '../../actions/shift_actions'
import { selectAllShifts } from '../../reducers/selectors'
import ShiftIndex from './shift_index'


const mapStateToProps = state => ({
    shifts: selectAllShifts(state)
})

const mapDispatchToProps = dispatch => ({
    fetchShifts: () => dispatch(getAllShifts())
})


export default connect(mapStateToProps, mapDispatchToProps)(ShiftIndex)