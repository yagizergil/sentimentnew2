const express = require('express');
const cors = require('cors');

const app = express();

// CORS ayarlarını yapılandırın
app.use(cors());

// Diğer route ve middleware'ları burada tanımlayın

const port = process.env.PORT || 8080;
app.listen(port, () => {
  console.log(`Sunucu ${port} portunda çalışıyor`);
});
