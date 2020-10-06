const countingChar = require('./countingchar');
var express = require("express");
var app = express();app.listen(3000, () => {
 console.log("Server running on port 3000");
});

app.get("/countingChar/:text", (req, res, next) => {
    mySimpleJsObject = { message : countingChar(req.params.text)} 
    res.json(mySimpleJsObject);
   });