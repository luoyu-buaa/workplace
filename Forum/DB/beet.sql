/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.5.56 : Database - bbs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bbs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;

USE `bbs`;

/*Table structure for table `bbs_message` */

DROP TABLE IF EXISTS `bbs_message`;

CREATE TABLE `bbs_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `bbs_message` */

insert  into `bbs_message`(`id`,`user_id`,`topic_id`,`status`) values (1,1,59,1),(2,1,73,1),(3,97,71,1),(4,95,78,1),(5,99,79,1),(6,95,75,1),(7,95,74,1),(8,102,78,1),(9,105,79,0),(10,1,65,1),(11,106,80,1),(12,104,81,1);

/*Table structure for table `bbs_module` */

DROP TABLE IF EXISTS `bbs_module`;

CREATE TABLE `bbs_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `turn` tinyint(2) DEFAULT NULL,
  `readonly` int(11) DEFAULT '0',
  `admin_list` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `bbs_module` */

insert  into `bbs_module`(`id`,`name`,`detail`,`turn`,`readonly`,`admin_list`) values (6,'天下杂谈',NULL,NULL,0,NULL),(7,'十个冷笑话',NULL,NULL,0,NULL),(8,'Java随笔',NULL,NULL,0,NULL),(9,'操作系统',NULL,NULL,0,NULL),(10,'数据库',NULL,NULL,0,NULL);

/*Table structure for table `bbs_post` */

DROP TABLE IF EXISTS `bbs_post`;

CREATE TABLE `bbs_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `has_reply` bit(1) NOT NULL DEFAULT b'0',
  `update_time` timestamp NULL DEFAULT NULL,
  `pros` int(11) DEFAULT '0',
  `cons` int(11) DEFAULT '0',
  `is_accept` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `topicID_P` (`topic_id`),
  KEY `userID_P` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=288 DEFAULT CHARSET=utf8;

/*Data for the table `bbs_post` */

insert  into `bbs_post`(`id`,`topic_id`,`user_id`,`content`,`create_time`,`has_reply`,`update_time`,`pros`,`cons`,`is_accept`) values (201,59,1,'发布一','2021-01-01 10:52:40','\0',NULL,1,0,0),(202,61,1,'<p>&nbsp; &nbsp; &nbsp;dsf df&nbsp;</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(203,61,1,'<p>&nbsp;<img src=\"/codeweb//bbs/showPic/1468381645615blob.png\" _src=\"/codeweb//bbs/showPic/1468381645615blob.png\"/></p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(209,64,1,'<p>&nbsp; &nbsp; &nbsp;sdf sdfs</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(210,65,1,'<p>&nbsp; &nbsp; &nbsp;sdfdfsdfsdfsdf</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(211,66,1,'<p>sdfsdfsd</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(212,66,1,'<p>&nbsp; &nbsp; &nbsp;dsfsdf&nbsp;</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(213,66,1,'<p><a href=\"http://127.0.0.1:7700/codeweb/bbs/topic/66/1\" target=\"_blank\" title=\"课程\">http://127.0.0.1:7700/codeweb/bbs/topic/66-1&nbsp;</a></p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(214,67,1,'<h2>第三方斯蒂芬放到</h2><p>dfdfdf<br/></p><p><br/></p><p><br/></p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(215,68,1,'<p><img src=\"/codeweb//bbs/showPic/1468389086446blob.png\" _src=\"/codeweb//bbs/showPic/1468389086446blob.png\"/></p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(216,69,4,'<p><img src=\"/codeweb//bbs/showPic/1468391755464blob.png\" _src=\"/codeweb//bbs/showPic/1468391755464blob.png\" style=\"width: 754px; height: 585px;\"/></p><p><br/></p><p><br/></p><p>ok，试试看了多发点 多发点，明天搞</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(217,69,4,'<p>&nbsp; &nbsp;<img src=\"/codeweb//bbs/showPic/1468391773228blob.png\" _src=\"/codeweb//bbs/showPic/1468391773228blob.png\" style=\"width: 680px; height: 445px;\"/></p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(218,69,4,'<p>什么时候讲？</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(219,69,4,'<p><img src=\"/codeweb//bbs/showPic/1468392229548blob.png\" _src=\"/codeweb//bbs/showPic/1468392229548blob.png\" style=\"width: 700px; height: 444px;\"/></p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(220,70,95,'打发第三方\r\n','2021-01-01 10:52:40','\0',NULL,0,0,0),(221,70,95,'### **李宗翰**','2021-01-01 10:52:40','\0',NULL,0,0,0),(225,59,95,'发布2','2021-01-01 10:52:40','\0',NULL,1,0,0),(226,59,95,'发布三','2021-01-01 10:52:40','\0',NULL,0,0,0),(227,59,95,'发布四','2021-01-01 10:52:40','\0',NULL,0,0,0),(228,59,95,'发布无','2021-01-01 10:52:40','\0',NULL,0,0,0),(229,59,95,'发布六','2021-01-01 10:52:40','\0',NULL,0,0,0),(230,59,95,'发布六','2021-01-01 10:52:40','\0',NULL,0,0,0),(231,59,95,'dfsdf  sfsdf ','2021-01-01 10:52:40','\0',NULL,0,0,0),(232,59,95,'sdfsf ','2021-01-01 10:52:40','\0',NULL,0,0,0),(233,59,95,'sdfsf ','2021-01-01 10:52:40','\0',NULL,0,0,0),(234,59,95,'dfdsf ','2021-01-01 10:52:40','\0',NULL,0,0,0),(235,59,95,'df ','2021-01-01 10:52:40','\0',NULL,0,0,0),(237,59,95,'dsfsdfs\r\ndsfdsfsd\r\n[sdfsffdf](http://163.com \"sdfsffdf\")\r\nsdfsdf\r\n## dfdfdfdfdf\r\n','2021-01-01 10:52:40','\0',NULL,0,0,0),(241,59,1,'<pre><code class=\"lang-java\"><br></code></pre>','2021-01-01 10:52:40','\0',NULL,0,0,0),(242,59,1,'<p>sdfsdfsdf</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(243,59,95,'<p>的说法是否</p><pre><code class=\"lang-java\"> public static void main(String[] args){\r\n&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;}</code></pre>','2021-01-01 10:52:40','\0',NULL,0,0,0),(262,74,95,'<p>测试我的新手</p>','2021-01-01 10:52:40','\0',NULL,1,0,0),(263,74,95,'<p>测试我的新功能</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(264,75,95,'<p>beetl 是最好的模板语言 ！！</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(265,76,95,'<p>作为中国国家主席，习近平在繁忙的公务活动中，不仅展示了他的睿智严谨，还留下了许多风趣幽默的言行。Most people have only seen the serious side of Chinese President Xi Jinping. But he also makes time for some lighthearted moments despite his packed daily schedule. Not only is Xi a statesman, he is also a football fan, a world traveler and occasionally a historian.客串文化讲解员 Witty interpreter“你们看，我的祖先很魁梧吧。<br></p><p><br></p><p>作为中国国家主席，习近平在繁忙的公务活动中，不仅展示了他的睿智严谨，还留下了许多风趣幽默的言行。Most people have only seen the serious side of Chinese President Xi Jinping. But he also makes time for some lighthearted moments despite his packed daily schedule. Not only is Xi a statesman, he is also a football fan, a world traveler and occasionally a historian.客串文化讲解员 Witty interpreter“你们看，我的祖先很魁梧吧。<br></p>','2021-01-01 10:52:40','\0',NULL,1,0,0),(266,77,95,'<p>abc沙发上是否sdfsdf&nbsp;</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(269,74,101,'<p>6666666</p>','2021-01-01 10:52:40','\0',NULL,0,0,0),(270,78,102,'<p>爱是什么？一个精灵坐在碧绿的枝叶间沉思。风儿若有若无。一只鸟儿飞过来，停在枝上，望着远处将要成熟的稻田。精灵取出一束黄澄澄的稻谷问道：“你爱这稻谷吗？”“爱。”“为什么？”“它驱赶我的饥饿。”鸟儿啄完稻谷，轻轻梳理着光润的羽毛。“现在你爱这稻谷吗？”精灵又取出一束黄澄澄的稻谷。鸟儿抬头望着远处的一湾泉水回答：“现在我爱那一湾泉水，我有点渴了。”精灵摘下一片树叶，里面盛了一汪泉水。鸟儿喝完泉水，准备振翅飞去。“请再回答我一个问题，”精灵伸出指尖，鸟儿停在上面。“你要去做什么更重要的事吗？我这里又稻谷也有泉水。”“我要去那片开着风信子的山谷，去看那朵风信子。”“为什么？它能驱赶你的饥饿？”“不能。”“它能滋润你的干渴？”“不能。”“那你为什么要去看它呢？”“我需要它啊。”“为什么需要？”“我爱它啊。”“为什么爱它？”“我日日夜夜都在思念它。”“为什么思念它？”“我爱它。”精灵沉默了片刻，又提出一个问题：“你为什么只爱那一朵风信子呢？山谷里有无数朵风信子。”“因为它是唯一的一朵啊。”“为什么？它和其他所有的风信子有什么不同的地方吗？”“有的。”“哪里不同呢？”“只有它才是我爱的那一朵啊。”精灵忽然轻轻笑了起来，鸟儿振翅而去。</p><p><img alt=\"img_38725_0_19.png\" src=\"/bbs/showPic/d79dfb70-af1e-4af2-8bee-15e214719a071592017718403.png\" width=\"60\" height=\"60\"><br></p>','2020-06-13 11:08:52','\0',NULL,0,0,0),(271,78,102,'<p>我是评论</p>','2020-06-13 11:09:27','\0',NULL,0,0,0),(272,78,103,'<p>我是&nbsp;第二个评论<br><br></p>','2020-06-13 11:12:19','\0',NULL,0,0,0),(283,79,105,'<p>testwewewewewe</p>','2020-06-13 21:17:24','\0',NULL,0,0,0),(284,79,104,'<p>???????</p>','2020-06-13 21:18:49','\0',NULL,0,0,0),(285,80,106,'<p><b>哈哈123！！！！！！！！！！！！！！！</b></p>','2020-06-13 21:20:19','\0',NULL,3,0,0),(286,81,104,'<p>Je ne sais pas!</p>','2020-06-13 21:20:50','\0',NULL,0,0,0),(287,80,104,'<p>Are you kidding me?<br><br></p>','2020-06-13 21:23:41','\0',NULL,0,0,0);

/*Table structure for table `bbs_reply` */

DROP TABLE IF EXISTS `bbs_reply`;

CREATE TABLE `bbs_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL DEFAULT '1',
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `content` varchar(300) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `topicID_R` (`topic_id`),
  KEY `postID_R` (`post_id`),
  KEY `userID_R` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `bbs_reply` */

insert  into `bbs_reply`(`id`,`topic_id`,`post_id`,`user_id`,`content`,`create_time`) values (3,59,201,1,'三东方闪电','2021-01-01 10:52:40'),(4,59,201,1,'辅导费','2021-01-01 10:52:40'),(5,59,201,1,'第三代','2021-01-01 10:52:40'),(6,61,203,1,'dsfds ','2021-01-01 10:52:40'),(7,61,203,1,'df ','2021-01-01 10:52:40'),(12,66,211,1,'fdfdf','2021-01-01 10:52:40'),(13,68,215,1,'好困难','2021-01-01 10:52:40'),(14,69,216,4,'看着不错','2021-01-01 10:52:40'),(15,69,216,4,'精彩','2021-01-01 10:52:40'),(16,69,218,4,'有时间就讲','2021-01-01 10:52:40'),(17,65,210,1,'sfdsf','2021-01-01 10:52:40'),(18,65,210,1,'dfdfd','2021-01-01 10:52:40'),(19,65,210,1,'sdfdsf','2021-01-01 10:52:40'),(20,65,210,1,'dfdf ','2021-01-01 10:52:40'),(21,70,221,95,'你好','2021-01-01 10:52:40'),(25,59,226,1,'sfsdfsdfssfsdf','2021-01-01 10:52:40'),(26,59,227,95,'kansfsfsfsdfsdfdsfdsfdsfdsf','2021-01-01 10:52:40'),(34,77,266,95,'sfsf  开始算算','2021-01-01 10:52:40'),(35,80,285,106,'2333333','2020-06-13 21:20:56'),(36,65,210,106,'233333333333','2020-06-13 21:22:42'),(38,81,286,106,'2333333333333333333','2020-06-13 21:24:09');

/*Table structure for table `bbs_topic` */

DROP TABLE IF EXISTS `bbs_topic`;

CREATE TABLE `bbs_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL,
  `post_count` int(11) NOT NULL DEFAULT '1',
  `reply_count` int(11) NOT NULL DEFAULT '0',
  `pv` int(11) NOT NULL DEFAULT '0',
  `content` varchar(150) NOT NULL,
  `emotion` tinyint(2) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_nice` bit(1) NOT NULL DEFAULT b'0',
  `is_up` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `moduleID_T` (`module_id`),
  KEY `userID_T` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

/*Data for the table `bbs_topic` */

insert  into `bbs_topic`(`id`,`user_id`,`module_id`,`post_count`,`reply_count`,`pv`,`content`,`emotion`,`create_time`,`is_nice`,`is_up`) values (59,1,2,17,0,92,'再发表一次看看那',NULL,'2021-01-01 10:52:40','\0','\0'),(60,1,2,3,0,18,'地方对双方都',NULL,'2021-01-01 10:52:40','\0','\0'),(61,1,2,2,0,4,'dfdf ',NULL,'2021-01-01 10:52:40','\0','\0'),(64,1,2,1,0,3,'sdfsdf',NULL,'2021-01-01 10:52:40','\0','\0'),(65,1,1,1,0,17,'sfsfs',NULL,'2021-01-01 10:52:40','\0','\0'),(66,1,1,3,0,19,'hello go',NULL,'2021-01-01 10:52:40','\0','\0'),(67,1,2,1,0,2,'',NULL,'2021-01-01 10:52:40','\0','\0'),(68,1,1,1,0,13,'关于什么什么的课程卡缴纳困难是发顺丰的',NULL,'2021-01-01 10:52:40','\0','\0'),(69,4,1,4,0,102,'Zookeeper',NULL,'2021-01-01 10:52:40','','\0'),(70,95,2,2,0,6,'打发第三方\r\n',NULL,'2021-01-01 10:52:40','\0','\0'),(74,95,1,3,0,14,'我的新书1',NULL,'2021-01-01 10:52:40','',''),(75,95,1,11,0,8,'发个帖子看看那',NULL,'2021-01-01 10:52:40','\0','\0'),(76,95,1,1,0,5,'没什么看看',NULL,'2021-01-01 10:52:40','\0','\0'),(77,95,1,3,0,28,'都是方式地方',NULL,'2021-01-01 10:52:40','',''),(78,102,1,3,0,2,'测试主题222333',NULL,'2020-06-13 11:08:52','\0','\0'),(79,105,6,2,0,4,'哈哈哈123213',NULL,'2020-06-13 21:17:24','\0','\0'),(80,106,7,2,0,4,'测试123',NULL,'2020-06-13 21:20:19','\0','\0'),(81,104,8,1,0,4,'C\'est bien!',NULL,'2020-06-13 21:20:50','\0','\0');

/*Table structure for table `bbs_user` */

DROP TABLE IF EXISTS `bbs_user`;

CREATE TABLE `bbs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT '0' COMMENT '积分',
  `level` int(11) DEFAULT '1' COMMENT '积分换算成等级，新生，老生，班主任，教导主任，校长',
  `balance` int(11) DEFAULT '0' COMMENT '积分余额',
  `corp` varchar(128) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `register_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

/*Data for the table `bbs_user` */

insert  into `bbs_user`(`id`,`user_name`,`password`,`email`,`score`,`level`,`balance`,`corp`,`ip`,`register_time`) values (1,'xxx','e10adc3949ba59abbe56e057f20f883e','xxx',54,1,54,NULL,NULL,NULL),(4,'李家智','e10adc3949ba59abbe56e057f20f883e',NULL,140,2,0,NULL,NULL,NULL),(5,'赵晴文','e10adc3949ba59abbe56e057f20f883e','zhaoqingwen@coamc.com',1000,5,0,NULL,NULL,NULL),(6,'石萌','e10adc3949ba59abbe56e057f20f883e','shimeng@coamc.com',12,1,0,NULL,NULL,NULL),(95,'admin','e10adc3949ba59abbe56e057f20f883e','xxxx@coamc.com',255,3,255,NULL,NULL,NULL),(96,'lijiazhi','202cb962ac59075b964b07152d234b70','123@123.com',0,1,NULL,'it',NULL,NULL),(97,'hank','e10adc3949ba59abbe56e057f20f883e','hank@163.com',22,1,22,'dfdsf',NULL,NULL),(98,'test1','e10adc3949ba59abbe56e057f20f883e','123@123.com',0,0,0,'11',NULL,NULL),(99,'test11','f696282aa4cd4f614aa995190cf442fe','test1@163.com',29,1,29,'天天公司',NULL,NULL),(100,'adb','e10adc3949ba59abbe56e057f20f883e','xxx@126.com',29,1,29,'cc',NULL,NULL),(101,'张三','202cb962ac59075b964b07152d234b70','7072524912@qq.com',13,1,13,'1','127.0.0.1','2020-06-12 09:43:35'),(102,'qwert','a384b6463fc216a5f8ecb6670f86456a','1793193974@qq.com',23,1,23,NULL,'115.60.176.45','2020-06-13 11:06:33'),(103,'另外一个人','a384b6463fc216a5f8ecb6670f86456a','123@qq.com',13,1,13,NULL,'115.60.176.45','2020-06-13 11:10:40'),(104,'z877421603','827ccb0eea8a706c4c34a16891f84e7b','761544650@qq.com',26,1,26,NULL,'119.182.107.56','2020-06-13 21:13:05'),(105,'luoyu','48c94a5e6397bfec12fb1d5fca5af5cd','861392049@qq.com',50,1,50,NULL,'223.87.53.39','2020-06-13 21:13:40'),(106,'123','202cb962ac59075b964b07152d234b70','1054386618@qq.com',32,1,32,NULL,'124.163.65.138','2020-06-13 21:14:04'),(107,'chenxinyu','fae0b27c451c728867a567e8c1bb4e53','2740686056@qq.com',10,1,10,NULL,'223.104.189.196','2020-06-13 21:50:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
