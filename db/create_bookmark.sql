/* bookmarks are saved user posts, news articles, or event information */
create table bookmark (
  bookmark_pk             INT NOT NULL AUTO_INCREMENT,
  bookmark_user           INT NOT NULL, /* the user who is bookmarking */
  bookmark_post           INT NOT NULL,
  PRIMARY KEY(bookmark_pk),
  FOREIGN KEY(bookmark_post) REFERENCES post(post_pk),
  FOREIGN KEY(bookmark_user) REFERENCES user(user_pk)
);
