'use strict';

const express = require('express');

// Constants
const PORT = 8010;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  let response = {
    "process.env": process.env,
      "version": 7
  }
  res.json(response);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);

//catches ctrl+c event
process.on('SIGINT', () => {
    process.exit()
});