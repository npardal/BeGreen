import axios from 'axios'
import { v4 as uuid } from 'uuid'
import { useRef } from 'react'

function TestPage() {
  const error = useRef('')

  const handleClick = async () => {
    try {
      const response = await axios.post(
        'http://localhost:8080/getSomething',
        {},
      )
      console.log(response)
    } catch (err) {
      console.log(err)
    }
  }

  const handleSignUp = async () => {
    try {
      const newId = uuid()
      let username = document.getElementById('username').value
      let email = document.getElementById('username').value
      let password = document.getElementById('password').value
      const response = await axios.post('http://localhost:8080/signUp', {
        id: newId,
        username: username,
        password: password,
        email: email,
      })
      if (response.message) {
        error.current = response.message
      } else {
        console.log('done signing up')
      }
    } catch (err) {
      console.log('error when trying to sign up users')
    }
  }

  return (
    <div className="h-screen">
      <p> Hello world </p>
      <p> HackPrinceton :) </p>
      <button onClick={handleClick}>Click me!</button>
      <div>
        <form className="flex justify-center flex-col items-center	">
          <label htmlFor="username">Username:</label>
          <input type="text" id="username" name="username" required></input>

          <label htmlFor="email">Email:</label>
          <input type="email" id="email" name="email" required></input>

          <label htmlFor="password">Password:</label>
          <input type="password" id="password" name="password" required></input>

          <button onClick={handleSignUp}>Sign Up</button>
        </form>
      </div>
    </div>
  )
}

export default TestPage
