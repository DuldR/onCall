import React from 'react'
import { Link } from 'react-router-dom'


export const UserIndexItem = (props) => {

    return ( 
        <li>
            <Link to={`/users/${props.user.id}`}>
                {props.user.name}
            </Link>
        </li>
    )
}