const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Categoria = sequelize.define(
  "categoria",
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
    },
    categoria: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    tableName: "categorias",
    timestamps: false,
  }
);

module.exports = Categoria;
