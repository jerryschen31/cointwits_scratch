let XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;
var data;
var url = "http://www.google.com";

var myRequest;

function sendRequest(url) {
  myRequest = new XMLHttpRequest();
  myRequest.onreadystatechange = function() {
    if (myRequest.readyState == 4 && myRequest.status == 200) {
//      data = JSON.parse(myRequest.responseText);
      console.log(myRequest.responseText);
    }
  }
  myRequest.open("GET", url, true);
  myRequest.send();
}

sendRequest(url);
