CREATE TABLE `employee_tb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(40) DEFAULT NULL,
  `emp_status` varchar(10) DEFAULT 'FREE',
  `first_name` varchar(30) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `phone_num` bigint NOT NULL,
  `salary` double NOT NULL,
  `serviceid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7n4xk62lpm1nchspspmvi4mhq` (`serviceid`),
  CONSTRAINT `FK7n4xk62lpm1nchspspmvi4mhq` FOREIGN KEY (`serviceid`) REFERENCES `service_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `feedback_tb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email_id` varchar(30) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `img_tb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `imp_size` longblob,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `orders_tb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bookingtime` datetime(6) NOT NULL,
  `status` varchar(40) DEFAULT 'pending',
  `employee_id` bigint DEFAULT NULL,
  `service_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1aakvcborhck5ls2h3foikpeg` (`employee_id`),
  KEY `FK3618m7fbv7xlid51xd5reun6q` (`service_id`),
  KEY `FKrkl8m98oxqbinrfpy6y8jghos` (`user_id`),
  CONSTRAINT `FK1aakvcborhck5ls2h3foikpeg` FOREIGN KEY (`employee_id`) REFERENCES `employee_tb` (`id`),
  CONSTRAINT `FK3618m7fbv7xlid51xd5reun6q` FOREIGN KEY (`service_id`) REFERENCES `service_tb` (`id`),
  CONSTRAINT `FKrkl8m98oxqbinrfpy6y8jghos` FOREIGN KEY (`user_id`) REFERENCES `user_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `service_img` (
  `img_id` bigint DEFAULT NULL,
  `service_id` bigint NOT NULL,
  PRIMARY KEY (`service_id`),
  KEY `FKqsdfwk2j1di8ihgwr2qsrkt14` (`img_id`),
  CONSTRAINT `FK5ifgxnjt0tc050je9663d3in8` FOREIGN KEY (`service_id`) REFERENCES `service_tb` (`id`),
  CONSTRAINT `FKqsdfwk2j1di8ihgwr2qsrkt14` FOREIGN KEY (`img_id`) REFERENCES `img_tb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `service_tb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `long_desc` varchar(400) DEFAULT NULL,
  `service_charge` double NOT NULL,
  `service_name` varchar(50) DEFAULT NULL,
  `service_tax` double NOT NULL,
  `short_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_85hprmoj1mepemu6a3828qamo` (`service_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user_tb` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(20) DEFAULT NULL,
  `house_no` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `street` varchar(60) DEFAULT NULL,
  `dob` datetime(6) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `phone` bigint NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'USER',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jjhogmvl1sxad3l1018wkl5wr` (`phone`),
  UNIQUE KEY `UK_2dlfg6wvnxboknkp9d1h75icb` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
