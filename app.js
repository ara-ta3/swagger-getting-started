const express = require("express");
const app = express();
const server = app.listen(8080);

app.get("/", function(req, res, next){
    res.json({
        "id": 1,
        "name": "hoge"
    });
});
