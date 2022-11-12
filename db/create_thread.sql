/* thread is a chain of one or more posts.
   A thread is always created when creating a root post.
   Reply posts are added to a thread.
   Threads belong to a topic.
*/
create table thread (
  thread_pk           INT NOT NULL AUTO_INCREMENT,
  thread_timestamp    INT NOT NULL, /* probably timestamp of the root post */
  thread_rootpost     INT,
  thread_postcount    INT NOT NULL,
  thread_topic        INT NOT NULL,
  PRIMARY KEY(thread_pk),
  FOREIGN KEY(thread_rootpost) REFERENCES post(post_pk),
  FOREIGN KEY(thread_topic) REFERENCES topic(topic_pk)
);
