const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Catalogo = sequelize.define(
  "catalogo",
  {
    titulo: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    categoria: {
      type: DataTypes.STRING,
      allowNull: false
    },
    temporadas: {
      type: DataTypes.INTEGER,
      allowNull: true,
    },
    reparto: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    generos: {
      type: DataTypes.STRING,
      allowNull: true,
    },
    resumen: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    poster: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    trailer: {
      type: DataTypes.STRING,
      allowNull: true,
    },
  },
  {
    tableName: "vistatrailer",
    timestamps: false,
  }
);

module.exports = Catalogo;