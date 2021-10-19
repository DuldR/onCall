import React from "react";
import { Route } from 'react-router-dom'

import UserIndexContainer from './users/user_index_container'
import OnCallContainer from './users/on_call_container'
import ShiftIndexContainer from './shifts/shift_index_container'
import SwapRequestContainer from "./swaps/swap_request_container";


const App = () => (
    <div className="main-page">
        <div className="user-container"> 
            <div>
                <OnCallContainer />
                <h1>User Selection</h1>
                <UserIndexContainer />
                <h1>Swap Requests</h1>
                <SwapRequestContainer />
            </div>

            <div>
                <h1>Right Side</h1>
                <ShiftIndexContainer />
            </div>
        </div>

        <div className="calendar-container">
            Calendar Container
        </div>
        
    </div>
)

export default App