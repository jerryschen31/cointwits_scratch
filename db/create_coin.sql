/* coin
   BTC, ETH, DOGE, etc... are all coins.
*/
create table coin (
  coin_pk           INT NOT NULL AUTO_INCREMENT,
  exchange_fk       INT NOT NULL,
  coin_name         VARCHAR(50) NOT NULL,
  coin_symbol       VARCHAR(10) NOT NULL,
  coin_logo         VARCHAR(25) NOT NULL,  /* name of coin image file */
  PRIMARY KEY(coin_pk),
  FOREIGN KEY(exchange_fk) references exchange(exchange_pk)
);
