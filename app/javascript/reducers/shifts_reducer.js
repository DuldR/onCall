import { RECEIVE_ONE_SHIFT, RECEIVE_ALL_SHIFTS } from './../actions/shift_actions'

const shiftsReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = {}

    switch (action.type) {
        case RECEIVE_ALL_SHIFTS:
            return action.shifts
        case RECEIVE_ONE_SHIFT:
            return Object.assign({}, state, {[action.shift.id] : action.shift})
        default:
            return state;
    }


}

export default shiftsReducer