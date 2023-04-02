import { BrowserRouter as Router, Route, Routes } from 'react-router-dom'
import Landing from './components/Landing'
import TestPage from './components/TestPage'
import './App.css'

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
