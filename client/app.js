let XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;

const req = new XMLHttpRequest();
const url = 'http://34.221.162.129:3000/user';
// const url = 'http://www.w3big.com/ajax/ajax-xmlhttprequest-send.html';

// req.onload = function() {
req.onreadystatechange = function() {
  if( this.readyState == 4 && req.status===200 ){
    // const data = JSON.parse( req.response );
    // console.log(req.responseText);
    console.log(req);
  }
}

req.open('GET', url);
req.send();
