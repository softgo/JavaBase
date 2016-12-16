use javabase;

-- ----------------------------
-- Table structure for sys_server_infos
-- ----------------------------

DROP TABLE IF EXISTS souyue_users;
CREATE TABLE souyue_users (
  user_id int(11) NOT NULL AUTO_INCREMENT COMMENT '搜悦用户的id',
  user_name varchar(100) DEFAULT NULL COMMENT '搜悦用户的账号',
  user_pass varchar(100) DEFAULT NULL COMMENT '搜悦登陆密码',
  nick_name varchar(100) DEFAULT NULL COMMENT '搜悦用户别名',
  user_image varchar(500) DEFAULT NULL COMMENT '用户的图片地址',
  user_phone char(11) DEFAULT NULL COMMENT '手机号码',
  user_mail varchar(100) DEFAULT NULL COMMENT '邮箱地址',
  user_qq varchar(30) DEFAULT NULL COMMENT '联系qq',
  user_sex int(2) DEFAULT '1' COMMENT '用户性别;1:男,0:女',
  register_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  status int(2) DEFAULT '1' COMMENT '用户状态;1:启用,0:弃用',
  PRIMARY KEY (user_id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO souyue_users VALUES (3,'15101050432','1439370207075','15101050432','http://www.baidu.com/img=123467aa',NULL,NULL,NULL,1,'2015-08-13 07:03:28',1),(4,'iopjkb','1439371478794','iopjkb','http://user-pimg.b0.upaiyun.com/selfcreate/default/default_24.jpg!sy',NULL,NULL,NULL,1,'2015-08-18 15:58:15',1),(5,'iopjkl','1439371540801','iopjkl哈哈','http://user-pimg.b0.upaiyun.com/selfcreate/default/default_9.jpg!sy',NULL,NULL,NULL,1,'2015-08-17 11:03:03',1),(6,'iopjkm','1439371577061','iopjkm','http://souyue-image.b0.upaiyun.com/user/0033/87192051.jpg',NULL,NULL,NULL,1,'2015-08-18 17:43:00',1),(7,'iopjkn','1439371602207','iopjkn',NULL,NULL,NULL,NULL,1,'2015-08-12 17:26:42',1),(8,'iopjkz','1439381062931','iopjkz',NULL,NULL,NULL,NULL,1,'2015-08-12 20:04:24',1),(9,'iopjkx','1439432244160','iopjkx',NULL,NULL,NULL,NULL,1,'2015-08-13 10:17:24',1),(10,'qweqwe1','1439434133033','qweqwe1','http://user-pimg.b0.upaiyun.com/selfcreate/1506/0511/03/4rb2yslmlk6014334733850107-20150605110305.jpg!sy',NULL,NULL,NULL,1,'2015-08-17 17:09:52',1),(14,'qweqwe2','1439465175037','测试客服m','http://souyue-image.b0.upaiyun.com/user/0173/43021572.jpg',NULL,NULL,NULL,1,'2015-08-19 11:38:39',1),(16,'Iopjkd','1439466463159','Iopjkd','http://user-pimg.b0.upaiyun.com/selfcreate/1506/0511/03/4rb2yslmlk6014334733850107-20150605110305.jpg!sy',NULL,NULL,NULL,1,'2015-08-13 19:47:43',1),(17,'zq3263282','1439467161437','精灵之殇2','http://user-pimg.b0.upaiyun.com/selfcreate/1506/0511/03/4rb2yslmlk6014334733850107-20150605110305.jpg!sy',NULL,NULL,NULL,1,'2015-08-18 16:19:31',1),(19,'qweqwe3','1439546556163','客服绅宝南校2','http://souyue-image.b0.upaiyun.com/user/0173/50482402.jpg',NULL,NULL,NULL,1,'2015-08-19 13:04:08',1),(20,'k12456','1439797354888','k12456','http://user-pimg.b0.upaiyun.com/selfcreate/1506/0511/03/4rb2yslmlk6014334733850107-20150605110305.jpg',NULL,NULL,NULL,1,'2015-08-17 15:42:34',1),(21,'a466031467','1439861291147','a466031467','http://user-pimg.b0.upaiyun.com/selfcreate/1506/0511/03/4rb2yslmlk6014334733850107-20150605110305.jpg!sy',NULL,NULL,NULL,1,'2015-08-18 09:28:11',1),(22,'huangjz','1439879960996','大橡木','http://souyue-image.b0.upaiyun.com/user/0008/88643600.jpg',NULL,NULL,NULL,1,'2015-08-18 14:39:22',1),(23,'Iopjka','1439885140242','Iopjka1','http://user-pimg.b0.upaiyun.com/selfcreate/1506/0511/03/4rb2yslmlk6014334733850107-20150605110305.jpg!sy',NULL,NULL,NULL,1,'2015-08-18 17:39:20',1),(24,'18201609561','1440035478059','多啦A梦123','http://souyue-image.b0.upaiyun.com/user/0166/95102909.jpg',NULL,NULL,NULL,1,'2015-08-20 09:51:18',1);
