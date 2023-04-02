const config = require('../config.json')

const { MongoClient, ServerApiVersion } = require('mongodb')
const uri = `mongodb+srv://tindo:${config.Password}@tindoapp.fek4mbd.mongodb.net/?retryWrites=true&w=majority`

let client

const connect = async () => {
  // always use try/catch to handle any exception
  try {
    client = new MongoClient(uri, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
      serverApi: ServerApiVersion.v1,
    })
    console.log(`connected to db: ${client.db().databaseName}`)
    return client
  } catch (err) {
    console.log(err.message)
  }
}
/**
 *
 * @returns the database attached to this MongoDB connection
 */
const getDB = async () => {
  // test if there is an active connection
  if (!client) {
    await connect()
  }
  return client.db()
}

const getDocument = async () => {
  const db = await getDB()

  // Use the collection "people"
  const col = db.collection('people')

  // Construct a document
  let personDocument = {
    name: { first: 'Alan', last: 'Turing' },
    birth: new Date(1912, 5, 23), // May 23, 1912
    death: new Date(1954, 5, 7), // May 7, 1954
    contribs: ['Turing machine', 'Turing test', 'Turingery'],
    views: 1250000,
  }

  // Insert a single document, wait for promise so we can read it back
  const p = await col.insertOne(personDocument)
  // Find one document
  const myDoc = await col.findOne()
  // Print to the console
  return myDoc
}

const addUser = async (myJson) => {
  const db = await getDB()
  const col = db.collection('Users')
  myJson._id = undefined
  const result = await col.insertOne({ myJson })
  return result
}

module.exports = {
  getDocument,
  getDB,
  addUser,
}
