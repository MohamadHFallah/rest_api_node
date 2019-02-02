

var mysql = require('mysql');
var express = require('express');
var bodyParser = require('body-parser');

var app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

//local mysql db connection
var con = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'instagram_fake'
});

/**
 * get posts
 */

app.get("/post/", (req, res, next) => {

    var sql = "select p.*,u.userName from post_tbl as p, user_tbl as u where p.user_id = u.user_id " +
              "and u.isActive=1 and p.isActive order by u.created limit 10 ";
    con.query(sql, function (err, result, fields) {

        if (err) throw err;
	    res.setHeader('Content-Type', 'application/json');
        res.end(JSON.stringify(result));
    });
});

/**
 * get comments
 */

app.get("/comment/:id", (req, res, next) => {

    var sql = "select c.*,u.userName from comment_tbl as c, user_tbl as u where c.post_id=? and c.user_id = u.user_id limit 10 ";
    con.query(sql,[req.params.id], function (err, result, fields) {

        if (err) throw err;
		res.setHeader('Content-Type', 'application/json');
        res.end(JSON.stringify(result));
    });
});

/*
app.get("/test/:id", (req, res, next) => {

    con.query("select * from social_app_name_tbl where id=?", [req.params.id], function (err, result, fields) {

        if (err) throw err;
		res.setHeader('Content-Type', 'application/json');
        res.end(JSON.stringify(result));
    });
});
*/





//start webService
app.listen(3000, () => {
    console.log("Web Service running port 3000");

});
