import React from 'react'


export const ShiftIndexItem = (props) => {

    return ( 
        <li>
            <ul className="shift-item">

                <li>
                    <label> Employee Name </label>
                    { props.user == undefined ? "Loading User" : props.user.name}
                </li>
                <li>
                    <label> Shift Start </label>
                    {props.shift_start}
                </li>
                 <li>
                    <label> Shift End </label>
                    {props.shift_end}
                </li>
            </ul>
        </li>
    )
}