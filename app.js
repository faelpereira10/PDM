const express = require('express')
const app = express()
const port = 3000
const mysql = require('mysql2');

// create the connection to database
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'cardapio'
});

app.get('/', (req, res) => {
    res.send('Alo mundo!')
})

app.get('/categoria', (req, res) => {
    // simple query
    connection.query(
        'SELECT * FROM categoria',
        function (err, results, fields) {
            res.send(results);
        }
    );
})

app.post('/categoria_inserir', (req, res) => {
    // simple query
    connection.query(
        'insert into categoria(titulo) values("Comida Boa")',
        function (err, results, fields) {
            res.send(results);
        }
    );
})

app.patch('/categoria_atualizar/:id', (req, res) => {
    // simple query
    var id_categoria = req.params.id
    connection.query(
        'update categoria set titulo = "Comida Ruim" where id_categoria = ' + id_categoria,
        function (err, results, fields) {
            console.log(err)
            res.send(results);
        }
    );
})

app.post('/categoria_apagar/:id', (req, res) => {
    // simple query
    var id_categoria = req.params.id
    connection.query(
        'delete from categoria where id_categoria = ' + id_categoria,
        function (err, results, fields) {
            console.log(err)
            res.send(results);
        }
    );
})



app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})