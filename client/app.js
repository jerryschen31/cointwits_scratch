const req = new XMLHttpRequest();
const url = 'http://34.221.162.129:3000';
req.open('GET', url+'/user');
req.onload = function() {
  if( req.status===200 ){
    const data = JSON.parse( req.response );
    console.log(data);
  }
}
req.send();
