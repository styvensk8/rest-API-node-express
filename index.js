const express = require('express')


const app = express()

const port = process.env.PORT || 3000

app.get('/', (req, res) => {
  res.send('Servidor de express conectado en el puerto ' + port)
})

app.listen(port)