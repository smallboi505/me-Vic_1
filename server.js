require('dotenv').config();

const express = require('express');
const app = express();
const port = process.env.NODE_PORT;

if(!port){
    throw new Error('Port not found.');
}

// Rota principal
app.get('/', (req, res) => {
  res.send('Congrats Abdul this is a node JS with Docker!');
});

// Inicia o servidor
app.listen(port, () => {
  console.log(`Servidor está rodando em http://localhost:${port}`);
});