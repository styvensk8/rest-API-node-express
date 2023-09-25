# Express and MYSQL

Rest API de [node.js](https://nodejs.org/es) utilizando [express](https://expressjs.com/) y conectada a una base de datos en [MYSQL](https://www.mysql.com/).

## Requisitos del sistema

- Docker
- Node 18.16.0

## Comando a ejecutar para la instalación y ejecución del proyecto

Instalación de dependencias

```
npm install
```

Ejecutar el proyecto en un ambiente de desarrollo

```
npm run dev
```

## Instalación de la Base de datos

La base de datos está construida en MYSQL, sin embargo, se contruye un entorno de trabajo gráfico en phpmyadmin para que sea mas facil de entender y usar.

La base de datosesta contruida en un contenedor de Docker con el fin de evitar errores con los diferentese sistemas, para ejecutar la base de datos deben realizar el siguiente proceso:

- Primero debe tener en cuenta los requisitos del sistema
- Segundo ejecutar en la terminal del proyecto los siguientes comandos

```
cd db
```

```
docker-compose up -d
```

- Tercero abrir en un navegador la ruta [localhost:8080](http://localhost:8080/)
- Cuarto Ingrese con las credenciales que se encuentran en el archivo docker-compose.yml
- Quinto importar los Querys database.sql y data.sql en pyhpmyadmin

## Rutas

- /specialtys
- /documents
- /doctors
- /users
- /appointments

### Concideraciones generales

Revisar que ningun aplicativo este ejecutado o corriendo en el puerto 3000 - 8080 - 3306

### Repositorio Github

- [Rest API con node y express](https://github.com/styvensk8/rest-API-node-express.git)
