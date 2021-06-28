let express = require('express');
let mysql = require('mysql');

const connection = mysql.createPool({
  host     : 'localhost', // Your connection adress (localhost).
  user     : 'jerry',     // Your database's username.
  password : 'demo',        // Your database's password.
  database : 'cointwits'   // Your database's name.
});

// Starting our app.
const app = express();

// Creating a GET route that returns data from the 'users' table.
app.get('/user', function (req, res) {
    // Connecting to the database.
    connection.getConnection(function (err, connection) {

    // Executing the MySQL query (select all data from the 'users' table).
    connection.query('SELECT * FROM user', function (error, results, fields) {
      // If some error occurs, we throw an error.
      if (error) throw error;

      // Getting the 'response' from the database and sending it to our route. This is were the data is.
      console.log('got a request!', req);
      res.status(200).send(results)
    });
  });
});

// Starting our server.
app.listen(3000, () => {
 console.log('Go to http://34.221.162.129:3000/user so you can see the data.');
});
