
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `author` WRITE;
INSERT INTO `author` VALUES
(2,'kim2','abc2@naver.com',NULL,NULL,NULL,'user'),
(3,'kim3','abc3@naver.com',NULL,NULL,NULL,'user'),
(4,'kim4','abc4@naver.com',NULL,NULL,NULL,'user'),
(5,'abc','abc@naver.com',NULL,NULL,NULL,'user'),
(6,'源','abc6@naver.com',NULL,NULL,255,'user'),
(8,NULL,NULL,NULL,NULL,NULL,'admin'),
(9,NULL,NULL,NULL,NULL,NULL,'user'),
(10,'kim1','abc1@naver.com',NULL,NULL,NULL,'user'),
(11,'test','test@naver,com',NULL,NULL,NULL,'user'),
(12,'test','test20@naver,com',NULL,NULL,NULL,'user');
UNLOCK TABLES;

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` varchar(3000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_time` datetime(6) DEFAULT current_timestamp(6),
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_author_fk` (`author_id`),
  CONSTRAINT `post_author_fk` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `post` WRITE;

INSERT INTO `post` VALUES
(1,'title1','contents1 ... ',10,'2023-11-13 10:58:09.743866',NULL),
(2,'title2','contents2 ... ',2,'2023-11-13 10:58:09.743866',NULL),
(3,'title3','contents3 ... ',NULL,'2023-11-13 10:58:09.743866',NULL),
(4,'title4','contents3 ... ',NULL,'2023-11-13 10:58:09.743866',NULL),
(5,'title5','contents5 ... ',NULL,'2023-11-13 10:58:18.505656',NULL);

UNLOCK TABLES;