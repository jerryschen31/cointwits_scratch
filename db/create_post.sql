/* post can be a user post, news article, or event information */
create table post (
  post_pk             INT NOT NULL AUTO_INCREMENT,
  post_title          VARCHAR(100),
  post_text           VARCHAR(800),
  post_image_url      VARCHAR(150),
  post_timestamp      TIMESTAMP NOT NULL,
  post_likes          INT, /* number of likes on a post */
  post_isbookmarked   BOOLEAN, /* is post bookmarked by anyone? */
  post_createdby      INT NOT NULL,
  post_parent         INT, /* the parent post; 1 if root post */
  post_root           INT, /* the root post for this thread; 1 if root post */
  post_topic          INT NOT NULL, /* every post falls under a topic */
  PRIMARY KEY(post_pk),
  FOREIGN KEY(post_createdby) REFERENCES user(user_pk),
  FOREIGN KEY(post_topic) REFERENCES topic(topic_pk),
  FOREIGN KEY(post_parent) REFERENCES post(post_pk),
  FOREIGN KEY(post_root) REFERENCES post(post_pk)
);
