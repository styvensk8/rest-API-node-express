import express from "express"
import routesApi from "./routes/index.js"

const app = express()
const port = process.env.PORT || 3000

app.get('/', (req, res) => {
  res.json('server in express ' + port)
})

routesApi(app)

app.listen(port)