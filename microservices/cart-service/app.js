const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Cart Service Running");
});

app.get("/cart", (req, res) => {
  res.json([
    { product: "Laptop", quantity: 1 },
    { product: "Phone", quantity: 2 }
  ]);
});

app.listen(3001, () => {
  console.log("Cart service running on port 3001");
});