const express = require("express");
const cors = require("cors");
const mysql = require("mysql2");
const dotenv = require("dotenv");
const app = express();

dotenv.config();
app.use(cors());
app.use(express.json());

const PORT = process.env.PORT;

const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

db.connect((err) => {
  if (err) {
    console.log("Database Connection Failed", err.stack);
    return;
  }
  console.log("Connected to Database");
});
console.log("Tharun");

app.get("/api/halls", (req, res) => {
  const query = "SELECT * FROM Hall";
  db.query(query, (err, results) => {
    if (err) {
      console.log("Error fetching hall data:", err);
      res.status(500).send("Error fetching hall data");
      return;
    }
    console.log("Hall Data:", results);
    res.json(results);
  });
});

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}/`);
});
