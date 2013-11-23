var express = require('express'),
    restful = require('node-restful'),
    mongoose = restful.mongoose;
var app = express();

function AllowCrossDomain (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With");
    next();
}

app.use(AllowCrossDomain);
app.use(express.bodyParser());
app.use(express.query());

mongoose.connect("mongodb://localhost/resources");

var model = 'todos';

//models.each(function(model) {})
var Resource = app.resource = restful.model('todos', mongoose.Schema({
        title: 'string',
        value: 'string',
    }))
    .methods(['get', 'post', 'put', 'delete']);

Resource.register(app, '/todos');

app.listen(3000);