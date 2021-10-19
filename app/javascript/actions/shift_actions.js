import * as APIUtil from '../util/util_shifts.js'

export const RECEIVE_ONE_SHIFT = "RECEIVE_ONE_SHIFT"
export const RECEIVE_ALL_SHIFTS = "RECEIVE_ALL_SHIFTS"

export const receiveOneShift = (shift) => {
    return {
        type: RECEIVE_ONE_SHIFT,
        shift
    }
}

export const receiveAllShifts = (shifts) => {
    return {
        type: RECEIVE_ALL_SHIFTS,
        shifts
    }
}

export const getOneShift = (shift) => (dispatch) => {
    // return APIUtil.getKanji(kanji).then(kanji => {
    //     dispatch(receiveOneKanji(kanji))
    // })
}

export const getAllShifts = () => (dispatch) => {
    return APIUtil.fetchAllShifts().then(shifts => {
        dispatch(receiveAllShifts(shifts))
    })
}