import React, { useEffect, useState } from 'react'
import { useSelector, useDispatch } from 'react-redux'
// import { fetchKanjis } from '/app/javascript/actions/kanji_actions.js'
import Rails from '@rails/ujs';


export function User() {

    // const kanjiTest = useSelector((state) => ({kanji: state.kanji}));
    // const [kanji, setKanji] = useState( kanji );
    const userTest = useSelector((state) => state.kanji)
    const dispatch = useDispatch();

    const bruh = () => {

        // if (kanjiTest[1] == undefined) {
        //     return <h1>Bruh</h1>
        // } else {
        //     return <h1>{kanjiTest[1]['name']}</h1>
        // }
        <h1>Test</h1>
    }


    useEffect(() => {
        dispatch(fetchKanjis())
        
    }, [])



    return (
        <div>
            {bruh()}
            
        </div>
    )
}