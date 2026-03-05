const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Product Service Running");
});

app.get("/products", (req, res) => {
  res.json([
    { id: 1, name: "Laptop", price: 1000 },
    { id: 2, name: "Phone", price: 500 }
  ]);
});

app.listen(3000, () => {
  console.log("Product service running on port 3000");
});