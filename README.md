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

## Ejemplos de Uso

A continuación, se presentan algunos ejemplos de uso común de la API:

- Para obtener una lista de todas las categorías disponibles, haga una solicitud GET a `/categorias`.
- Para buscar trailers por título, haga una solicitud GET a `/catalogo/titulo/{título}`.
- Para obtener información detallada sobre un trailer específico por su ID, haga una solicitud GET a `/catalogo/{ID}`.

Estos son solo ejemplos simples, y la API ofrece muchas más funcionalidades que pueden explorarse a través de las diferentes rutas.

A continuación, en esta documentación, encontrará detalles completos sobre cómo utilizar cada uno de estos recursos, incluyendo ejemplos de solicitudes y respuestas.

¡Disfrute explorando y utilizando la API de Trailerfix!


| Ruta                                    | Descripción                                                                                    |
|-----------------------------------------|------------------------------------------------------------------------------------------------|
| `GET /categorias`                       | Busca y devuelve todas las categorías en la base de datos.                                    |
| `GET /catalogo`                         | Busca y devuelve todo el catálogo en la base de datos.                        |
| `GET /catalogo/:id`                     | Busca y devuelve un trailer por su ID. Si no se encuentra, se devuelve un mensaje de error.  |
| `GET /catalogo/titulo/:query`           | Busca y devuelve trailers por título que coincidan con el valor de `query`.                   |
| `GET /catalogo/genero/:query`           | Busca y devuelve trailers por género que coincidan con el valor de `query`.                    |
| `GET /catalogo/categoria/:categoria`    | Busca y devuelve trailers por categoría que coincida con el valor de `categoria`.             |

En este proyecto se trabajo con

![Node js logo](./src/img/nodejs.png)![Express js logo](./src/img/expressjs.png)![Sequelize logo](./src/img/sequelize.png)

![MySQL logo](./src/img/mysql.png)

