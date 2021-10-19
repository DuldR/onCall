import { combineReducers } from 'redux'

import usersReducer from './users_reducer'
import shiftsReducer from './shifts_reducer'
import swapsReducer from './swaps_reducer'

const rootReducer = combineReducers({
    users: usersReducer,
    shifts: shiftsReducer,
    swaps: swapsReducer
})

export default rootReducer