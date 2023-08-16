const express = require('express');
const cors = require('cors');

const app = express();

// Genel CORS ayarları
app.use(cors());

// Diğer Express yönlendirmeleri ve işlemleri burada devam eder...

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
