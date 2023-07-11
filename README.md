# Express and MYSQL

Rest API de [node.js](https://nodejs.org/es) construida con [express](https://expressjs.com/)

## Requisitos del sistema

- Docker
- Node 18.16.0

## Comando a ejecutar para la instalación y ejecución del proyecto

Instalación

```
npm install
```

Ejecutar el proyecto en un ambiente de desarrollo

```
npm run dev
```

## Instalación de la Base de datos

La base de datos está construida en MYSQL, sin embargo, se tiene un entorno de trabajo gráfico en phpmyadmin para que varios usuarios puedan entenderlo de manera más cómoda y ejecutar los Querys.

- Primero debe tener en cuenta los requisitos del sistema
- Ejecutar en la terminal del proyecto los siguientes comandos

```
cd db
```

```
docker-compose up -d
```

- una vez haya ejecutado los comandos, abrir en un navegador la ruta [localhost:8080](http://localhost:8080/)
- Ingrese con las credenciales que se encuentran en el archivo docker-compose.yml en la ruta rest-API-node-express/db/docker-compose.yml

## Rutas

- /specialtys
- /documents
- /doctors
- /users
- /appointments

### Concideraciones generales

Revisar que ningun aplicativo este ejecutado y corriendo en el puerto 3000 - 8080 - 3306

### Repositorio Github

- [Rest API con node y express](https://github.com/styvensk8/rest-API-node-express.git)
