/* an exchange. For now, we use "Crypto" for general exchange for all coins.
*/
create table exchange (
  exchange_pk           INT NOT NULL AUTO_INCREMENT,
  exchange_name         VARCHAR(20) NOT NULL,
  PRIMARY KEY(exchange_pk)
);
