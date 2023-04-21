// basic express app with one route that returns current time

const express = require('express');
const app = express();
const port = 3030;

app.get('/', (req, res) => {
  const date = new Date();
  const time = date.toLocaleTimeString();
  res.send(`Hello from Node.js app! Current time is: ${time}`);
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
  const date = new Date();
  const time = date.toLocaleTimeString();
  console.log(`Current time is: ${time}`);
});
