#!/bin/sh
CMD_MYSQL="mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}"

$CMD_MYSQL -e "
GRANT ALL PRIVILEGES ON chimyapp.* TO 'testuser'@'localhost';
FLUSH PRIVILEGES;
"

$CMD_MYSQL -e "
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);
"

$CMD_MYSQL -e "
INSERT INTO users (name, password, email) VALUES ('五条 悟', '011f55b984b0ea1e5e1d6a32df1ac1548fe24f8c20d85012b04c6fc5139abb42', 'satoru@example.com');
INSERT INTO users (name, password, email) VALUES ('夏油 傑', '54aaa3aced18c8f91fa47b375ea186680236a0359f80dcf483ad7b90b72f8d0d', 'suguru@example.com');
"
