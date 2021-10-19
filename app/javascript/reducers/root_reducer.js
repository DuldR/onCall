import { combineReducers } from 'redux'

import usersReducer from './users_reducer'
import shiftsReducer from './shifts_reducer'

const rootReducer = combineReducers({
    users: usersReducer,
    shifts: shiftsReducer
})

export default rootReducer