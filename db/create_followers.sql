create table followers (
  follower            INT NOT NULL,
  following           INT NOT NULL,
  following_date      TIMESTAMP,
  FOREIGN KEY(follower) REFERENCES user(user_pk),
  FOREIGN KEY(following) REFERENCES user(user_pk)
);
