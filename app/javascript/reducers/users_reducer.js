import { RECEIVE_ONE_USER, RECEIVE_ALL_USERS } from './../actions/user_actions'

const usersReducer = (state = {}, action) => {
    Object.freeze(state);
    let newState = {}


    switch (action.type) {
        case RECEIVE_ALL_USERS:
            return action.users
        case RECEIVE_ONE_USER:
            return Object.assign({}, state, {[action.user.id] : action.user})
        default:
            return state;
    }


}

export default usersReducer