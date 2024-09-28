DROP DATABASE IF EXISTS `scaler`;
CREATE DATABASE `scaler`; 
USE `scaler`;

CREATE TABLE students (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(20) NOT NULL,
  batch_id int DEFAULT NULL,
  buddy_id int DEFAULT NULL,
  psp int DEFAULT '0',
  is_student tinyint(1) DEFAULT '0',
  is_ta tinyint(1) DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `students` (`id`, `name`, `batch_id`, `buddy_id`, `psp`, `is_student`, `is_ta`)
VALUES
      (1, 'Rama', 1, 10, 92, 0, 0),
      (2, 'Sita', 2, 9, 91, 0, 0),
      (3, 'Ganesh', 1, 8, 78, 1, 0),
      (4, 'Krishna', 2, 7, 85, 1, 0),
      (5, 'Hanuman', 3, 6, 79, 1, 0),
      (6, 'Adiyogi', 2, 5, 83, 1, 0),
      (7, 'Durga', 1, 4, 86, 1, 0),
      (8, 'Kali', 2, 3, 65, 1, 0),
      (9, 'Laxmi', 3, 2, 63, 1, 0),
      (10, 'Bhrahma', 1, 1, 74, 1, 0),
      (11, 'Vishnu', NULL, NULL, 84, 0, 0),
      (12, 'Shankaracharya', NULL, NULL, 87, 0, 0),
      (13, 'Kalidas', NULL, 5, 81, 0, 0),
      (14, 'Kashyap', 2, 1, 89, 1, 1),
      (15, 'Vivekananda', NULL, NULL, 85, 0, 1);