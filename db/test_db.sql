/* quickly create the database and populate the database tables for testing. */
source create_user.sql;
source create_followers.sql;
source create_topic.sql;
source create_post.sql;
source create_bookmark.sql;

/* first create a few users */
insert into user (user_id, user_firstname, user_lastname, user_password_hash, user_email, user_about, user_location, user_image_url) values ('jerryschen', 'Jerry', 'Chen', 'abcde', 'jerryschen@gmail.com', 'Creator of Cointwits', 'San Jose, CA', '...');
insert into user (user_id, user_firstname, user_lastname, user_password_hash, user_email, user_about, user_location, user_image_url) values ('weizuo', 'Wei', 'Zuo', '123456', 'jerryandwei2018@gmail.com', 'Wife of creator of Cointwits', 'Santa Clara, CA', '...');
insert into user (user_id, user_firstname, user_lastname, user_password_hash, user_email, user_about, user_location, user_image_url) values ('raspberry', 'Evelyn', 'Chen', 'fghijk', 'raspberrychen@gmail.com', 'Daughter of creator of Cointwits', 'Good Samaritan Hospital', '...');

/* create followers - DATE is YYYYMMDDHHMMSS */
insert into followers (follower, following, following_date) values ((select user_pk from user where user_id = 'jerryschen'),(select user_pk from user where user_id = 'raspberry'), '2021-06-21 10:32:56');

insert into followers (follower, following, following_date) values ((select user_pk from user where user_id = 'weizuo'), (select user_pk from user where user_id = 'raspberry'), '2021-06-21 11:25:39');

/* create a topic */
insert into topic (topic_name) values ('welcome');
insert into topic (topic_name) values ('bitcoin');
insert into topic (topic_name) values ('dogecoin');

/* create first root post - Welcome to Cointwits! */
insert into post (post_title, post_text, post_image_url, post_timestamp, post_likes, post_isbookmarked, post_createdby, post_parent, post_root, post_topic) values ('welcome post by jerry', 'welcome...', '...', '2021-06-21 12:25:45', 0, FALSE, (select user_pk from user where user_id = 'jerryschen'), NULL, NULL, (select topic_pk from topic where topic_name='welcome'));

/* create posts under topic bitcoin */
insert into post (post_title, post_text, post_image_url, post_timestamp, post_likes, post_isbookmarked, post_createdby, post_parent, post_root, post_topic) values ('test post by jerry', 'testing...', '...', '2021-06-21 13:25:45', 0, FALSE, (select user_pk from user where user_id = 'jerryschen'), 1, 1, (select topic_pk from topic where topic_name='bitcoin'));

/* add a reply to that thread */
insert into post (post_title, post_text, post_image_url, post_timestamp, post_likes, post_isbookmarked, post_createdby, post_parent, post_root, post_topic) values ('reply by raspberry', 'testing raspberry message...', '...', '2021-06-21 14:48:22', 0, FALSE, (select user_pk from user where user_id = 'raspberry'), 2, 2, (select topic_pk from topic where topic_name='bitcoin'));

/* create post under topic dogecoin */
insert into post (post_title, post_text, post_image_url, post_timestamp, post_likes, post_isbookmarked, post_createdby, post_parent, post_root, post_topic) values ('test post by wei', 'testing wei message...', '...', '2021-08-21 13:25:45', 0, FALSE, (select user_pk from user where user_id = 'weizuo'), 1, 1, (select topic_pk from topic where topic_name='dogecoin'));
