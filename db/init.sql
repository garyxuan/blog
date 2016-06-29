DROP DATABASE IF EXISTS `MYBLOG`;
CREATE DATABASE IF NOT EXISTS `MYBLOG` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE MYBLOG;
DROP TABLE IF EXISTS `USER`;
CREATE TABLE IF NOT EXISTS `USER` (
  `user_id`      INT                  AUTO_INCREMENT,
  `nick_name`    VARCHAR(40) NOT NULL DEFAULT '',
  `password`     VARCHAR(20) NOT NULL DEFAULT '',
  `modifiedtime` DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdtime`  DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
)
  ENGINE = INNODB
  DEFAULT CHARSET = utf8
  COMMENT = '用户表';
DROP TABLE IF EXISTS `BLOG`;
CREATE TABLE IF NOT EXISTS `BLOG` (
  `blog_id`      INT                   AUTO_INCREMENT,
  `title`        VARCHAR(100) NOT NULL DEFAULT '无题',
  `content`      TEXT         NOT NULL,
  `user_id`      INT          NOT NULL DEFAULT 0,
  `modifiedtime` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdtime`  DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`blog_id`),
  CONSTRAINT `FK_BLOG_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `USER` (`user_id`)
)
  ENGINE = INNODB
  DEFAULT CHARSET = UTF8
  COMMENT = '博客表';
DROP TABLE IF EXISTS `LOG`;
CREATE TABLE IF NOT EXISTS `LOG` (
  `log_id`      INT                                                                                                                                                                                                                                                                                                                                                                                                          AUTO_INCREMENT,
  `user_id` INT          NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT 0,
  `data`    VARCHAR(60) NOT NULL                                                                                                                                                                                                                                                                                                                                                                                         DEFAULT '',
  `createdtime` DATETIME NOT NULL                                                                                                                                                                                                                                                                                                                                                                                            DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  CONSTRAINT `FK_LOG_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `USER` (`user_id`)
)
  ENGINE = INNODB
  DEFAULT CHARSET = UTF8,
  COMMENT = '日志表';