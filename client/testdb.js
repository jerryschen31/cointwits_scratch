var mysql = require('mysql');

var mysql = require('mysql');

var con = mysql.createConnection({
  host: "34.221.162.129",
  user: "jerry",
  password: "demo",
  port: 3306,
  database: "cointwits"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  con.query("SELECT * FROM user", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});
