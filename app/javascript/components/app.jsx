import React from "react";
import { Route, Switch, Link } from 'react-router-dom'

import UserIndexContainer from './users/user_index_container'
import OnCallContainer from './users/on_call_container'
import ShiftIndexContainer from './shifts/shift_index_container'
import SwapRequestContainer from "./swaps/swap_request_container";
import SwapFormContainer from './swaps/swap_form_container'


const App = () => (
    <div className="main-page">
        <div className="user-container"> 
            <section className="user-dashboard">
                
                <OnCallContainer />

                <Route path='/' render={(props) => (

                    <section>

                        <UserIndexContainer {...props} />
                        <Route path='/users/:userId/' component={SwapRequestContainer} />
                    
                    </section>

                    )}
                />

            </section>

            <section className="shift-dashboard">
                <ShiftIndexContainer />
                <Route path='/users/:userId/' render={(props) => (
                    <SwapFormContainer {...props} />
                )}
                />
            </section>
        </div>

        <div className="calendar-container">
            Calendar Container
        </div>
        
    </div>
)

export default App