DROP DATABASE IF EXISTS company_simulation;
CREATE DATABASE company_simulation DEFAULT CHARACTER SET utf8;

USE company_simulation;

DROP TABLE IF EXISTS employee;

CREATE TABLE `employee`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `name`   varchar(128) DEFAULT Null,
    `age`   int(11),
    `educational_background` varchar(11),
    `annual_income` bigint,
    `company_id` int,
    `position` varchar(11),
    `job_title` varchar(11),
    `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);

INSERT INTO employee
VALUES (1, '山田', 30, '大学院', 6000000, 1, 'リーダー', 'プログラマー', NOW(), NOW());
INSERT INTO employee
VALUES (2, 'サル', 25, '大学', 5500000, 1, '平社員', 'プログラマー', NOW(), NOW());