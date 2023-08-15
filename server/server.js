
const cors = require("cors")


app.use(cors());

const allowedOrigins = ['https://sentimentanalysisgl.netlify.app'];

const corsOptions = {
  origin: (origin, callback) => {
    if (allowedOrigins.includes(origin) || !origin) {
      callback(null, true);
    } else {
      callback(new Error('Bu kaynağa erişim engellendi.'));
    }
  },
};

app.use(cors(corsOptions));
