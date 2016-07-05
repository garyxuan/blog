/*CREATE TABLE IF NOT EXISTS `BLOG` (
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
  COMMENT = '博客表';*/
/*CREATE TABLE IF NOT EXISTS `USER` (
  `user_id`      INT                  AUTO_INCREMENT,
  `nick_name`    VARCHAR(40) NOT NULL DEFAULT '',
  `password`     VARCHAR(20) NOT NULL DEFAULT '',
  `modifiedtime` DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdtime`  DATETIME    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
)
  ENGINE = INNODB
  DEFAULT CHARSET = utf8
  COMMENT = '用户表';*/
INSERT INTO user VALUES (1, 'admin', '1230123O',NOW(),NOW());
INSERT INTO blog VALUES (1, '这是我的第一篇博客', '这是我的第一篇博客,用来测试', 1,NOW(),NOW()),
  (2, '这是我的第二篇博客', '这是我的第二篇博客,继续测试', 1,NOW(),NOW());