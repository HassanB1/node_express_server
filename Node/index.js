const path = require("path");
const express = require("express");
const app = express();
const port = process.env.NODE_PORT || 9000;


app.use(express.static(path.join(__dirname,'../my-app/', 'build')));
app.get('/', function(req,res)){
        res.sendFile(path.join(__dirname,'../my-app/', 'build', 'index.html'));
});

app.listen(port, () => {
    console.log('Server started on port ${port}');
});