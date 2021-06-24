/* topic is the overarching header (coin) of a series of threads.
   BTC, ETH, DOGE, etc... are all topics.
*/
create table topic (
  topic_pk           INT NOT NULL AUTO_INCREMENT,
  topic_name         VARCHAR(50) NOT NULL,
  PRIMARY KEY(topic_pk)
);
