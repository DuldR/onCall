import React from 'react'
import ReactDOM from 'react-dom'
import Rails from '@rails/ujs'
import { Root } from '../components/root'
import configureStore from '../store/store'




document.addEventListener('DOMContentLoaded', () => {

  let store = configureStore();

  const root = document.getElementById("root")
  ReactDOM.render( <Root store={store}/>, root)

})