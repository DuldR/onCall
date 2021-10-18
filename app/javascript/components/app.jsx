import React from "react";
import { Route } from 'react-router-dom'
import UserIndex from "./users/user_index";

import UserIndexContainer from './users/user_index_container'




const App = () => (
    <div className="main-page">
        <header>
            I'm the header
        </header>

        <div>
            <h1>Left Side</h1>

            <UserIndexContainer />
        </div>

        <div>
            <h1>Right Side</h1>
        </div>
    </div>
)

export default App