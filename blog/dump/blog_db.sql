CREATE TABLE posts (
	post_id int(11) NOT NULL AUTO_INCREMENT,
	title varchar(255) NOT NULL,
	message TEXT NOT NULL,
	day date NOT NULL,
	author_id int(11),
	PRIMARY KEY (post_id)
)  ENGINE=INNODB;

CREATE TABLE tags (
	tag_id int(11) NOT NULL AUTO_INCREMENT,
	name varchar(50) NOT NULL UNIQUE,
	post_id int(11),
	PRIMARY KEY (tag_id)
)  ENGINE=INNODB;

CREATE TABLE authors (
	author_id int(11) NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	PRIMARY KEY (author_id)
)  ENGINE=INNODB;

ALTER TABLE posts
ADD FOREIGN KEY fk_author(author_id)
REFERENCES authors(author_id)
ON UPDATE CASCADE
ON DELETE NO ACTION;

ALTER TABLE tags
ADD FOREIGN KEY fk_post(post_id)
REFERENCES posts(post_id)
ON UPDATE CASCADE
ON DELETE NO ACTION;


INSERT INTO `authors` (`author_id`, `name`) VALUES
(1, 'Andy Young'),
(2, 'Barbara Levy'),
(3, 'Josh Davis'),
(4, 'Jack Rogers'),
(5, 'Stella Pavlova'),
(6, 'Tim Barr'),
(7, 'Edna Frank'),
(8, 'Avi Green'),
(9, 'Pat Stumuller'),
(10, 'Sean Forbes');

INSERT INTO `posts` (`post_id`, `title`, `message`, `day`, `author_id`) VALUES
(1, 'Morning', 'Morning exercises for everybody', '2017-03-12', 1),
(2, 'New books', 'Described new collection of books.', '2017-04-27', 7),
(3, 'Motivation Post', 'Motivation is the reason for people actions, desires, and needs.', '2017-01-03', 2),
(4, 'News', 'Good news for anybody!', '2017-01-02', 4),
(5, 'Sunday', 'Sunday events for whole family on this post', '2017-01-21', 5),
(6, 'Post about food', 'Healthy food can be delicious!', '2017-07-04', 1),
(7, 'About weather', 'The Weather Channel provide a national and local weather forecast for cities.', '2017-05-09', 7),
(8, 'Sea', 'A sea is a large body of salt water that is surrounded in whole or in part by land.', '2017-08-07', 8),
(9, 'About Tokio', 'Tokyo the capital of Japan.', '2017-08-12', 6),
(10, 'Summer', 'Summer is the hottest of the four temperate seasons.', '2017-08-12', 10);

INSERT INTO `tags` (`tag_id`, `name`, `post_id`) VALUES
(1, 'health', 1),
(2, 'weather', 7),
(3, 'food', 6),
(4, 'book', 2),
(5, 'friend', 5),
(6, 'weekend', 5),
(7, 'dancing', 4),
(8, 'sport', 1),
(9, 'motivation', 3),
(10, 'hobby', 4);