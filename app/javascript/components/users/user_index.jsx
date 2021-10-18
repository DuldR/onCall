import React, { useEffect, useState } from 'react'
import { useSelector, useDispatch } from 'react-redux'
import { getAllUsers } from '/app/javascript/actions/user_actions.js'
import Rails from '@rails/ujs';


export function User() {

    // const kanjiTest = useSelector((state) => ({kanji: state.kanji}));
    // const [kanji, setKanji] = useState( kanji );
    const userTest = useSelector((state) => state.kanji)
    const dispatch = useDispatch();

    const bruh = () => {
        <h1>Test</h1>
    }


    useEffect(() => {
        dispatch(getAllUsers())
        
    }, [])



    return (
        <div>
            {bruh()}
            
        </div>
    )
}