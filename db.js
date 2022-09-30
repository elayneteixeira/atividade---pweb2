const { Sequelize } = require('sequelize');
const sequelize = require('sequelize');

const dbSequelize = new Sequelize('alunos', 'root', 'aluno.ifal', {
    dialect:'mysql', host:'localhost'
});

module.exports = dbSequelize