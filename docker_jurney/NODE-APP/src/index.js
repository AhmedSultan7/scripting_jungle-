const express = require('express');

const PORT = 4000;

const app = express();

app.get('/', (req, res) => {
  res.send('<h1>Hello World!</h1>    <p>This is a simple Express server running in a Docker container.</p> docker run -p 4000:4000 node-app'); 
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});