import React from 'react'


export const UserIndexItem = (props) => {

    return ( 
        <li>
            <ul>
                <li>
                    <label> Name </label>
                    {props.name}
                </li>
            </ul>
        </li>
    )
}