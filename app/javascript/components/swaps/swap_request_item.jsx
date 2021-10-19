import React from 'react'

export const SwapRequestItem = (props) => {

    return ( 
        <li>
            <ul className="swap-list-container">


                <span>
                    <label className="swap-user-name"> Employee Name </label>
                    <li>
                        {props.target == undefined ? <h1>Loading</h1> : props.user.name}
                    </li>
                    <label> Shift Start </label>
                    <li>
                        {props.userShift == undefined ? <h1>Loading</h1> : props.targetShift.shift_start}
                    </li>
                    
                    <li>
                        {props.userShift == undefined ? <h1>Loading</h1> : props.targetShift.shift_end}
                    </li>
                </span>

                <span>
                    <label className="swap-user-name"> Requestor Name </label>
                    <li>
                        {props.target == undefined ? <h1>Loading</h1> : props.target.name}
                    </li>
                    <label> Shift Start </label>
                    <li>
                        {props.targetShift == undefined ? <h1>Loading</h1> : props.targetShift.shift_start}
                    </li>
                    <label> Shift End </label>
                    <li>
                        {props.targetShift == undefined ? <h1>Loading</h1> : props.targetShift.shift_end}
                    </li>
                </span>
            </ul>
        </li>
    )
}