import React from 'react'

export const SwapRequestItem = (props) => {

    return ( 
        <li>
            <ul className="swap-list-container">
                <span>
                    <li>
                        Your Shift
                    </li>
                    <li>
                        {props.targetShift == undefined ? <h1>Loading</h1> : props.targetShift.shift_start}
                    </li>
                </span>

                <span>
                    <li>
                        {props.target == undefined ? <h1>Loading</h1> : props.target.name}
                    </li>
                    <li>
                        {props.targetShift == undefined ? <h1>Loading</h1> : props.targetShift.shift_start}
                    </li>
                </span>
            </ul>
        </li>
    )
}