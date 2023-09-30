const express = require("express");
const app = express();

const sequelize = require("./src/conexion/connection");
const Catalogo = require("./src/modelos/catalogo");
const Categoria = require("./src/modelos/categoria");
const { Op } = require('sequelize');

const port = process.env.PORT || 3000;

app.use(express.json());


app.get("/categorias", async (req, res) => {
  try {
    await sequelize.authenticate();
    await Categoria.sync();
    const categorias = await Categoria.findAll();
    const allCategorias = categorias.map((categoria) => categoria.dataValues);
    res.status(200).json(allCategorias);
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error en el servidor", description: error.message });
  }
});
    
app.get("/catalogo", async (req, res) => {
  try {
    await sequelize.authenticate();
    await Catalogo.sync();
    const allCatalogo = await Catalogo.findAll();
    const allCatalogoData = allCatalogo.map(
      (trailer) => trailer.dataValues
    );
    res.status(200).json(allCatalogoData);
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error en el servidor", description: error.message });
  }
});

app.get("/catalogo/:id", async (req, res) => {
    try {
    const id = req.params.id;
    if (isNaN(id)) {
        return res.status(400).json({ error: "ID no válido. Debe ser un número." });
    }
    const trailer = await Catalogo.findByPk(id);
    if(trailer){
        res.status(200).json(trailer)
    }    
    else{
        res.status(404).json({ error: `No se encontraron trailers con ID: ${id}.`});
    }
    
  } catch (error) {
    res.status(500).json({ error: "Error en el servidor", description: error.message });
  }
});

app.get('/catalogo/titulo/:query', async (req, res) => {
    try {
          const { query } = req.params;
          const trailer = await Catalogo.findAll({
                where: { titulo: {
                            [Op.like]: `%${ query }%`,
                         },
                },
          });
          trailer.length !== 0 ? res.status(200).json(trailer)
                                : res.status(404).json({ error: "No se encontraron trailers con ese titulo." });
    } catch (error) {
          res.status(500).json({ error: 'Error en el servidor', description: error.message });
    }
});

app.get('/catalogo/genero/:query', async (req, res) => {
    try {
          const { query } = req.params;
          const trailerGenero = await Catalogo.findAll({
                where: { generos: {
                            [Op.like]: `%${ query }%`,
                         },
                },
          });
          trailerGenero.length !== 0 ? res.status(200).json(trailerGenero)
                                     : res.status(404).json({ error: "No se encontraron trailers con ese genero." });
    } catch (error) {
          res.status(500).json({ error: 'Error en el servidor', description: error.message });
    }
});

app.get('/catalogo/categoria/:categoria', async (req, res) => {
    try {
        const categoria = req.params.categoria;
        const trailerCategoria = await Catalogo.findAll({ where: { categoria }});

        trailerCategoria.length !== 0 ? res.status(200).json(trailerCategoria)
                                      : res.status(404).json({ error: "No se encontraron trailers con esa categoria." });
    } catch (error) {
          res.status(500).json({ error: 'Error en el servidor', description: error.message });
    }
});


app.listen(port, () => console.log(`Servidor escuchando en el puerto ${port}`));
