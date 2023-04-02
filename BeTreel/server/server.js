const express = require('express')
const cors = require('cors')
const config = require('./config.json')
const routes = require('./routes')
const session = require('express-session')
const bodyParser = require('body-parser')

const webapp = express()
webapp.use(
  session({
    resave: false,
    saveUninitialized: false,
    secret: 'debug',
    cookie: { secure: false },
  }),
)
webapp.use(bodyParser.json()) // parse JSON requests

webapp.use(cors())
webapp.use(
  express.urlencoded({
    extended: true,
  }),
)

webapp.post('/getSomething', routes.getSomethingCuh)
webapp.post('/signUp', routes.signUp)

webapp.listen(config.server_port, () => {
  console.log(
    `Server running at http://${config.server_host}:${config.server_port}/`,
  )
})

module.exports = webapp
