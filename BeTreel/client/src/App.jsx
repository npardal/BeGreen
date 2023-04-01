import { useState } from 'react'
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Landing from './components/Landing'
import TestPage from './components/TestPage'

function App() {
  return (
    <Router>
      <div>
        <section>
          <article>
            <Routes>
              <Route path="/" element={<Landing />}></Route>
              <Route path="/testing" element={<TestPage />}></Route>
            </Routes>
          </article>
        </section>
      </div>
    </Router>
  )
}

export default App
