import express from "express"
import {pool} from "./connection.js"

const app = express()
const port = process.env.PORT || 3000

app.get('/', (req, res) => {
  res.json('server in express ' + port)
})

app.get('/sql', async (req, res) => {
  const [result] = await pool.query('SELECT * FROM specialty')
  res.json(result)
})

app.listen(port)