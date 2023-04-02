const config = require('./config.json')
const db = require('./model/database')
var SHA3 = require('crypto-js/sha3')
/* 
Connect to MongoDB database
*/
const getSomethingCuh = async function (req, res) {
  try {
    const result = await db.getDocument()
    res.send(result)
  } catch (err) {
    console.log('something wrong in the database', err)
  }
}

const signUp = async function (req, res) {
  try {
    // send student info to the back end
    const id = req.body.id
    const newStudent = {
      id: id,
      username: req.body.username,
      password: SHA3(req.body.password).toString(),
      email: req.body.email,
    }
    const response = await db.addUser(newStudent)
    // ??
    req.session.username = username
    res.status(201).json({ data: { id: response } })
  } catch (err) {
    console.log('something is wrong with signing up', err)
    resp.status(400).json({ message: 'There was an error' })
  }
}

module.exports = { getSomethingCuh, signUp }
