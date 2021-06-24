create table user (
  user_pk             INT NOT NULL AUTO_INCREMENT,
  user_id             VARCHAR(100) NOT NULL,
  user_firstname      VARCHAR(50),
  user_lastname       VARCHAR(50),
  user_password_hash  VARCHAR(75) NOT NULL,
  user_email          VARCHAR(100) NOT NULL,
  user_about          VARCHAR(250),
  user_location       VARCHAR(75),
  user_image_url      VARCHAR(150),
  PRIMARY KEY(user_pk)
);
