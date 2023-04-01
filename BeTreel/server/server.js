const express = require('express')
const cors = require('cors')
const config = require('./config')
const webapp = express()

webapp.use(cors())
webapp.use(
  express.urlencoded({
    extended: true,
  }),
)

webapp.listen(config.server_port, () => {
    console.log(`Server running at http://${config.server_host}:${config.server_port}/`)
});

module.exports = webapp;