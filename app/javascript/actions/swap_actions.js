import * as APIUtil from '../util/util_swaps.js'

export const RECEIVE_ONE_SWAP = "RECEIVE_ONE_SWAP"
export const RECEIVE_ALL_SWAPS = "RECEIVE_ALL_SWAPS"

export const receiveSwaps = (swaps) => {
    return {
        type: RECEIVE_ALL_SWAPS,
        swaps
    }
}

export const receiveOneSwap = (swap) => {
    return {
        type: RECEIVE_ONE_SWAP,
        swap
    }
}


export const getAllSwaps = () => (dispatch) => {
    return APIUtil.fetchSwaps().then(swaps => {
        dispatch(receiveSwaps(swaps))
    })
}

export const createReview = (swap) => (dispatch) => {
    return APIUtil.createSwap(swap).then(
        swap => {
            dispatch(receiveOneSwap(swap))
            return swap
        }
    )
}