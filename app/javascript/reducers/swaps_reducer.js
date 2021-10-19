import { RECEIVE_ONE_SWAP, RECEIVE_ALL_SWAPS } from './../actions/swap_actions'

const swapsReducer = (state = {}, action) => {
    Object.freeze(state)

    let newState = {}


    switch (action.type) {
        case RECEIVE_ALL_SWAPS:
            return action.swaps;
        case RECEIVE_ONE_SWAP:
            return Object.assign({}, state, {[action.swap.id]:action.swap})
        default:
            return state;
    }
}

export default swapsReducer