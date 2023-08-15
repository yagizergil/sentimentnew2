const express = require('express');
const cors = require('cors');

const app = express();

// CORS ayarlarını yapılandırın
app.use(cors());

// GET route örneği
app.get('/example', (req, res) => {
  res.json({ message: 'Merhaba, bu CORS örneğidir.' });
});

const port = process.env.PORT || 80;
app.listen(port, () => {
  console.log(`Sunucu ${port} portunda çalışıyor`);
});

