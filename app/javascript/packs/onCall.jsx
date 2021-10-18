import React from 'react'
import ReactDOM from 'react-dom'
import Rails from '@rails/ujs'
import { Root } from '../components/root'
import configureStore from '../store/store'

// import { fetchOneKanji } from '../actions/kanji_actions'
// import * as APIUtil from '../util/kanji_util'

// Actions



document.addEventListener('DOMContentLoaded', () => {

  let store = configureStore();

  const root = document.getElementById("root")
  ReactDOM.render( <Root store={store}/>, root)

  window.store = store;
})