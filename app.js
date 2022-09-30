const express = require('express');
const alunoRouter = require('./alunosRouter')

const database = require('./db')

const app = express();
app.use(express.json());

app.use('/alunos', alunoRouter);


app.listen(3000, () => {
    const resultDb = await database.sync({alter: true});
    console.log(`DB: ${resultDb}`);
    console.log('server started');
})