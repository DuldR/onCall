import * as APIUtil from '../util/util_users.js'

export const RECEIVE_ONE_USER = "RECEIVE_ONE_USER"
export const RECEIVE_ALL_USERS = "RECEIVE_ALL_USERS"

export const receiveOneUser = (user) => {
    return {
        type: RECEIVE_ONE_USER,
        user
    }
}

export const receiveAllUser = (users) => {
    return {
        type: RECEIVE_ALL_USERS,
        users
    }
}

export const getOneUser = (user) => (dispatch) => {
    // return APIUtil.getKanji(kanji).then(kanji => {
    //     dispatch(receiveOneKanji(kanji))
    // })
}

export const getAllUsers = () => (dispatch) => {
    return APIUtil.fetchAllUsers().then(users => {
        dispatch(receiveAllUser(users))
    })
}