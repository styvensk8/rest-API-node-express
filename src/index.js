import express from 'express';
import routesApi from './routes/index.js';
import { PORT } from './Config/config.js';

const app = express();

app.use(express.json());

app.get('/', (req, res) => {
	res.send('server in express ' + PORT);
});

// Rutas
routesApi(app);

app.use((req, res, next) => {
	res.status(404).send('Ruta no encontrada');
});

app.listen(PORT);
