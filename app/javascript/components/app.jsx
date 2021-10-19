import React from "react";
import { Route, Switch, Link } from 'react-router-dom'

import UserIndexContainer from './users/user_index_container'
import OnCallContainer from './users/on_call_container'
import ShiftIndexContainer from './shifts/shift_index_container'
import SwapRequestContainer from "./swaps/swap_request_container";


const App = () => (
    <div className="main-page">
        <div className="user-container"> 
            <section>
                
                <OnCallContainer />

                <Route path='/' render={(props) => (

                    <section>
                        <UserIndexContainer {...props} />
                        <SwapRequestContainer {...props} />
                    </section>

                    )}
                />

            </section>

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