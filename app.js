const express = require("express");

const app = express();

app.get("/", (req, res) => {
    res.send("Hello from AWS CI/CD Pipeline Version 1.0");
});

app.get("/api", (req, res) => {
    res.json({
        message: "CI/CD pipeline working successfully"
    });
});

app.listen(3000, () => {
    console.log("Server running on port 3000");
});