const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Welcome to SuperNo Frontend!');
});

const PORT = process.env.PORT || 5173;
app.listen(PORT, () => {
  console.log(`Frontend server running on port ${PORT}`);
});
