import React from "react";
import { Route } from 'react-router-dom'

import { User } from 'components/users/user_index.jsx'




const App = () => (
    <div className="main-page">
        <header>
            I'm the header
        </header>

        <div>
            <h1>Left Side</h1>

            <User />
        </div>

        <div>
            <h1>Right Side</h1>
        </div>
    </div>
)

export default App