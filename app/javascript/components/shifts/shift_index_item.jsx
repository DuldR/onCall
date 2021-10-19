import React from 'react'


export const ShiftIndexItem = (props) => {

    return ( 
        <li>
            <ul>

                <li>
                    <label> User </label>
                    { props.user == undefined ? "Loading User" : props.user.name}
                </li>
                <li>
                    <label> Start </label>
                    {props.shift_start}
                </li>
                 <li>
                    <label> End </label>
                    {props.shift_end}
                </li>
            </ul>
        </li>
    )
}