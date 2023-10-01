# Api Rest Trailerfix

Bienvenido a la documentación de la API REST de Trailerfix. Esta API proporciona acceso a una amplia colección de trailers de películas y series de televisión, así como a información sobre categorías y géneros.

## Descripción General

La API de Trailerfix permite a los desarrolladores y usuarios acceder a recursos relacionados con trailers de películas y series de televisión. Puede utilizarse para buscar trailers por ID, título, género o categoría, y proporciona información detallada sobre cada trailer, incluyendo el reparto, la sinopsis y el tráiler en sí.

## Requisitos de Autenticación

Actualmente, la API no requiere autenticación para acceder a los recursos públicos. Sin embargo, es posible que se implementen restricciones de acceso en el futuro para ciertas funcionalidades. Asegúrese de leer la documentación actualizada para obtener información sobre cualquier requisito de autenticación adicional.

## Recursos Disponibles

La API ofrece los siguientes recursos principales:

- `/categorias`: Permite acceder a información sobre las categorías de películas y series disponibles.
- `/catalogo`: Proporciona acceso a una lista completa de trailers en el catálogo.
- `/catalogo/:id`: Permite buscar un trailer específico por su ID.
- `/catalogo/titulo/:query`: Permite buscar trailers por título.
- `/catalogo/genero/:query`: Permite buscar trailers por género.
- `/catalogo/categoria/:categoria`: Permite buscar trailers por categoría.

Cada recurso tiene sus propios endpoints y parámetros de solicitud, que se describirán con más detalle en secciones posteriores de esta documentación.

## Base de Datos y Vista

Nuestra API utiliza una base de datos relacional que consta de 6 tablas distintas para almacenar información relacionada con el catálogo de trailers. Además, hemos creado una vista que agrega datos de estas tablas para facilitar el acceso a la información.

### Tablas de la Base de Datos

1. **Catalogo**: Esta tabla almacena detalles generales sobre los trailers, como su título, resumen, temporadas, poster y enlace al tráiler.

2. **Categorias**: Aquí se registran las categorías a las que pertenecen los trailers, como "Serie" o "Pelicula"

3. **Reparto**: Guarda información sobre los actores que participan en cada trailer, estableciendo relaciones con los trailers mediante un ID.
   
4. **Actores**: Almacena una lista de actores. Estableciendo relaciones con los repartos mediante un ID.

5. **Generotrailer**: Esta tabla relaciona los trailers con sus géneros correspondientes, lo que permite una búsqueda y clasificación eficiente por género.

6. **Generos**: Almacena una lista de géneros cinematográficos disponibles, como "Ciencia Ficción", "Drama", "Terror", entre otros.

### Vista

Hemos creado una vista llamada `vistatrailer`, que agrega información de varias de estas tablas para proporcionar una vista unificada y fácil de usar de los trailers en nuestro catálogo. La vista `vistatrailer` combina datos de las tablas `Catalogo`, `Categoria`, `Reparto`, `Generotrailer`, `Actores` y `Generos`.

Esto significa que, al acceder a la vista `vistatrailer` a través de nuestra API, los desarrolladores pueden obtener detalles completos de los trailers, incluyendo su título, categoría, reparto, géneros, resumen y más, todo en una única consulta.

El uso de esta vista simplifica y agiliza el proceso de consulta de información de los trailers, lo que facilita la integración de nuestra API en aplicaciones y servicios que requieran datos de trailers de manera eficaz.
```sql

CREATE
    ALGORITHM = UNDEFINED
    DEFINER = `root`@`localhost`
    SQL SECURITY DEFINER
VIEW `trailerfix`.`vistatrailer` AS
SELECT 
    `t`.`idtrailers` AS `id`,
    `t`.`titulo` AS `titulo`,
    `c`.`categoria` AS `categoria`,
    `t`.`temporadas` AS `temporadas`,
    GROUP_CONCAT(DISTINCT `a`.`nombreactor` SEPARATOR ', ') AS `reparto`,
    GROUP_CONCAT(DISTINCT `g`.`genero` SEPARATOR ', ') AS `generos`,
    `t`.`resumen` AS `resumen`,
    `t`.`poster` AS `poster`,
    `t`.`trailer` AS `trailer`
FROM
    (((((`trailerfix`.`catalogo` `t`
    JOIN `trailerfix`.`reparto` `r` ON ((`t`.`idtrailers` = `r`.`idtrailer`)))
    JOIN `trailerfix`.`actores` `a` ON ((`r`.`idactor` = `a`.`idactor`)))
    JOIN `trailerfix`.`generotrailer` `tg` ON ((`t`.`idtrailers` = `tg`.`idtrailer`)))
    JOIN `trailerfix`.`generos` `g` ON ((`tg`.`idgenero` = `g`.`idgenero`)))
    JOIN `trailerfix`.`categorias` `c` ON ((`c`.`id` = `t`.`idcategoria`)))
GROUP BY `t`.`idtrailers`, `t`.`titulo`, `t`.`resumen`, `t`.`trailer`, `t`.`poster`, `t`.`temporadas`, `c`.`categoria`;
```

## Ejemplos de Uso

A continuación, se presentan algunos ejemplos de uso común de la API:

- Para obtener una lista de todas las categorías disponibles, haga una solicitud GET a `/categorias`.
- Para buscar trailers por título, haga una solicitud GET a `/catalogo/titulo/{título}`.
- Para obtener información detallada sobre un trailer específico por su ID, haga una solicitud GET a `/catalogo/{ID}`.

Estos son solo ejemplos simples, y la API ofrece muchas más funcionalidades que pueden explorarse a través de las diferentes rutas.

A continuación, en esta documentación, encontrará detalles completos sobre cómo utilizar cada uno de estos recursos, incluyendo ejemplos de solicitudes y respuestas.



| Ruta                                    | Descripción                                                                                    |
|-----------------------------------------|------------------------------------------------------------------------------------------------|
| `GET /categorias`                       | Busca y devuelve todas las categorías en la base de datos.                                    |
| `GET /catalogo`                         | Busca y devuelve todo el catálogo en la base de datos.                        |
| `GET /catalogo/:id`                     | Busca y devuelve un trailer por su ID. Si no se encuentra, se devuelve un mensaje de error.  |
| `GET /catalogo/titulo/:query`           | Busca y devuelve trailers por título que coincidan con el valor de `query`.                   |
| `GET /catalogo/genero/:query`           | Busca y devuelve trailers por género que coincidan con el valor de `query`.                    |
| `GET /catalogo/categoria/:categoria`    | Busca y devuelve trailers por categoría que coincida con el valor de `categoria`.             |


## Respuestas

| Código de Estado | Descripción                              | Ejemplo de Cuerpo de Respuesta                             |
|------------------|------------------------------------------|----------------------------------------------------------|
| 200 OK           | Solicitud exitosa                        | Ejemplo de respuesta exitosa JSON:                         |
|                  |                                          | ```json                                                |
|                  |                                          | {                                                    |
|                  |                                          |   "id": 1,                                           |
|                  |                                          |   "titulo": "Ejemplo de Trailer",                    |
|                  |                                          |   "categoria": "Acción",                             |
|                  |                                          |   "temporadas": 3,                                   |
|                  |                                          |   "reparto": "Actor 1, Actor 2",                    |
|                  |                                          |   "generos": "Aventura, Ciencia Ficción",           |
|                  |                                          |   "resumen": "Un resumen del trailer...",           |
|                  |                                          |   "poster": "enlace al póster",                     |
|                  |                                          |   "trailer": "enlace al tráiler"                    |
|                  |                                          | }                                                    |
| 400 Bad Request  | Solicitud inválida o parámetros faltantes| Respuesta de error JSON:                                |
|                  |                                          | ```json                                                |
|                  |                                          | {                                                    |
|                  |                                          |   "error": "Solicitud inválida",                    |
|                  |                                          |   "description": "Faltan parámetros obligatorios"   |
|                  |                                          | }                                                    |
| 404 Not Found    | Recurso no encontrado                    | Respuesta de error JSON:                                |
|                  |                                          | ```json                                                |
|                  |                                          | {                                                    |
|                  |                                          |   "error": "Recurso no encontrado",                 |
|                  |                                          |   "description": "No se encontraron trailers con ID: {id}" |
|                  |                                          | }                                                    |
| 500 Server Error | Error interno del servidor               | Respuesta de error JSON:                                |
|                  |                                          | ```json                                                |
|                  |                                          | {                                                    |
|                  |                                          |   "error": "Error en el servidor",                  |
|                  |                                          |   "description": "Descripción detallada del error"  |
|                  |                                          | }                                                    |







## En este proyecto se trabajo con

![Node js logo](./src/img/nodejs.png)![Express js logo](./src/img/expressjs.png)![Sequelize logo](./src/img/sequelize.png)

![MySQL logo](./src/img/mysql.png)

