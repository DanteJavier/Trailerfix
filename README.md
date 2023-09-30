# Api Rest Trailerfix




| Ruta                                    | Descripción                                                                                    |
|-----------------------------------------|------------------------------------------------------------------------------------------------|
| `GET /categorias`                       | Busca y devuelve todas las categorías en la base de datos.                                    |
| `GET /catalogo`                         | Busca y devuelve todo el catálogo en la base de datos.                        |
| `GET /catalogo/:id`                     | Busca y devuelve un trailer por su ID. Si no se encuentra, se devuelve un mensaje de error.  |
| `GET /catalogo/titulo/:query`           | Busca y devuelve trailers por título que coincidan con el valor de `query`.                   |
| `GET /catalogo/genero/:query`           | Busca y devuelve trailers por género que coincidan con el valor de `query`.                    |
| `GET /catalogo/categoria/:categoria`    | Busca y devuelve trailers por categoría que coincida con el valor de `categoria`.             |

En este proyecto se trabajo con

![Node js logo](./src/img/nodejs.png)![Express js logo](./src/img/expressjs.png)![Sequelize logo](./src/img/sequelize.png)[MySQL logo](./src/img/mysql.png)

