import React from "react";
import { Route } from 'react-router-dom'

import UserIndexContainer from './users/user_index_container'
import OnCallContainer from './users/on_call_container'


const App = () => (
    <div className="main-page">
        <div className="user-container"> 
            User Container

            <div>
                <h1>Left Side</h1>
                <UserIndexContainer />
                <OnCallContainer />
            </div>

            <div>
                <h1>Right Side</h1>
            </div>
        </div>

        <div className="calendar-container">
            Calendar Container
        </div>
        
    </div>
)

export default App