/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm81txp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm81txp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm81txp`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm81txp/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm81txp/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm81txp/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`dianhua`,`youxiang`,`zhaopian`) values (21,'2021-04-19 16:46:26','教师1','123456','教师姓名1','男','助教','13823888881','773890001@qq.com','http://localhost:8080/ssm81txp/upload/jiaoshi_zhaopian1.jpg'),(22,'2021-04-19 16:46:26','教师2','123456','教师姓名2','男','助教','13823888882','773890002@qq.com','http://localhost:8080/ssm81txp/upload/jiaoshi_zhaopian2.jpg'),(23,'2021-04-19 16:46:26','教师3','123456','教师姓名3','男','助教','13823888883','773890003@qq.com','http://localhost:8080/ssm81txp/upload/jiaoshi_zhaopian3.jpg'),(24,'2021-04-19 16:46:26','教师4','123456','教师姓名4','男','助教','13823888884','773890004@qq.com','http://localhost:8080/ssm81txp/upload/jiaoshi_zhaopian4.jpg'),(25,'2021-04-19 16:46:26','教师5','123456','教师姓名5','男','助教','13823888885','773890005@qq.com','http://localhost:8080/ssm81txp/upload/jiaoshi_zhaopian5.jpg'),(26,'2021-04-19 16:46:26','教师6','123456','教师姓名6','男','助教','13823888886','773890006@qq.com','http://localhost:8080/ssm81txp/upload/jiaoshi_zhaopian6.jpg');

/*Table structure for table `shiyankecheng` */

DROP TABLE IF EXISTS `shiyankecheng`;

CREATE TABLE `shiyankecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `shiyanshijiweishu` int(11) DEFAULT NULL COMMENT '实验室机位数',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengxiangqing` varchar(200) DEFAULT NULL COMMENT '课程详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='实验课程';

/*Data for the table `shiyankecheng` */

insert  into `shiyankecheng`(`id`,`addtime`,`gonghao`,`jiaoshixingming`,`yuyuebianhao`,`shiyanshimingcheng`,`shiyanshijiweishu`,`shuliang`,`yuyueshijian`,`kechengmingcheng`,`kechengxiangqing`,`sfsh`,`shhf`) values (41,'2021-04-19 16:46:26','工号1','教师姓名1','预约编号1','实验室名称1',1,1,'预约时间1','课程名称1','课程详情1','是',''),(42,'2021-04-19 16:46:26','工号2','教师姓名2','预约编号2','实验室名称2',2,2,'预约时间2','课程名称2','课程详情2','是',''),(43,'2021-04-19 16:46:26','工号3','教师姓名3','预约编号3','实验室名称3',3,3,'预约时间3','课程名称3','课程详情3','是',''),(44,'2021-04-19 16:46:26','工号4','教师姓名4','预约编号4','实验室名称4',4,4,'预约时间4','课程名称4','课程详情4','是',''),(45,'2021-04-19 16:46:26','工号5','教师姓名5','预约编号5','实验室名称5',5,5,'预约时间5','课程名称5','课程详情5','是',''),(46,'2021-04-19 16:46:26','工号6','教师姓名6','预约编号6','实验室名称6',6,6,'预约时间6','课程名称6','课程详情6','是','');

/*Table structure for table `shiyanshi` */

DROP TABLE IF EXISTS `shiyanshi`;

CREATE TABLE `shiyanshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `shiyanshijiweishu` int(11) DEFAULT NULL COMMENT '实验室机位数',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`),
  UNIQUE KEY `shiyanshimingcheng` (`shiyanshimingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='实验室';

/*Data for the table `shiyanshi` */

insert  into `shiyanshi`(`id`,`addtime`,`bianhao`,`shiyanshimingcheng`,`shiyanshijiweishu`,`jiage`,`shuliang`,`yuyueshijian`) values (31,'2021-04-19 16:46:26','编号1','实验室名称1',1,1,1,'1'),(32,'2021-04-19 16:46:26','编号2','实验室名称2',2,2,2,'1'),(33,'2021-04-19 16:46:26','编号3','实验室名称3',3,3,3,'1'),(34,'2021-04-19 16:46:26','编号4','实验室名称4',4,4,4,'1'),(35,'2021-04-19 16:46:26','编号5','实验室名称5',5,5,5,'1'),(36,'2021-04-19 16:46:26','编号6','实验室名称6',6,6,6,'1');

/*Table structure for table `shiyanxuanke` */

DROP TABLE IF EXISTS `shiyanxuanke`;

CREATE TABLE `shiyanxuanke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `shiyanshijiweishu` int(11) DEFAULT NULL COMMENT '实验室机位数',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengxiangqing` varchar(200) DEFAULT NULL COMMENT '课程详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='实验选课';

/*Data for the table `shiyanxuanke` */

insert  into `shiyanxuanke`(`id`,`addtime`,`xuehao`,`xingming`,`gonghao`,`jiaoshixingming`,`shiyanshimingcheng`,`shiyanshijiweishu`,`shuliang`,`yuyueshijian`,`kechengmingcheng`,`kechengxiangqing`,`sfsh`,`shhf`) values (51,'2021-04-19 16:46:26','学号1','姓名1','工号1','教师姓名1','实验室名称1',1,1,'2021-04-19 16:46:26','课程名称1','课程详情1','是',''),(52,'2021-04-19 16:46:26','学号2','姓名2','工号2','教师姓名2','实验室名称2',2,1,'2021-04-19 16:46:26','课程名称2','课程详情2','是',''),(53,'2021-04-19 16:46:26','学号3','姓名3','工号3','教师姓名3','实验室名称3',3,1,'2021-04-19 16:46:26','课程名称3','课程详情3','是',''),(54,'2021-04-19 16:46:26','学号4','姓名4','工号4','教师姓名4','实验室名称4',4,1,'2021-04-19 16:46:26','课程名称4','课程详情4','是',''),(55,'2021-04-19 16:46:26','学号5','姓名5','工号5','教师姓名5','实验室名称5',5,1,'2021-04-19 16:46:26','课程名称5','课程详情5','是',''),(56,'2021-04-19 16:46:26','学号6','姓名6','工号6','教师姓名6','实验室名称6',6,1,'2021-04-19 16:46:26','课程名称6','课程详情6','是','');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-19 16:46:26');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`nianling`,`xueyuan`,`zhuanye`,`dianhua`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-04-19 16:46:26','学生1','123456','姓名1','男',1,'学院1','专业1','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm81txp/upload/xuesheng_zhaopian1.jpg'),(12,'2021-04-19 16:46:26','学生2','123456','姓名2','男',2,'学院2','专业2','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm81txp/upload/xuesheng_zhaopian2.jpg'),(13,'2021-04-19 16:46:26','学生3','123456','姓名3','男',3,'学院3','专业3','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm81txp/upload/xuesheng_zhaopian3.jpg'),(14,'2021-04-19 16:46:26','学生4','123456','姓名4','男',4,'学院4','专业4','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm81txp/upload/xuesheng_zhaopian4.jpg'),(15,'2021-04-19 16:46:26','学生5','123456','姓名5','男',5,'学院5','专业5','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm81txp/upload/xuesheng_zhaopian5.jpg'),(16,'2021-04-19 16:46:26','学生6','123456','姓名6','男',6,'学院6','专业6','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm81txp/upload/xuesheng_zhaopian6.jpg');

/*Table structure for table `xueshengfankui` */

DROP TABLE IF EXISTS `xueshengfankui`;

CREATE TABLE `xueshengfankui` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `fankuishijian` datetime DEFAULT NULL COMMENT '反馈时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='学生反馈';

/*Data for the table `xueshengfankui` */

insert  into `xueshengfankui`(`id`,`addtime`,`xuehao`,`xingming`,`gonghao`,`biaoti`,`neirong`,`fankuishijian`,`sfsh`,`shhf`) values (71,'2021-04-19 16:46:26','学号1','姓名1','工号1','标题1','内容1','2021-04-19 16:46:26','是',''),(72,'2021-04-19 16:46:26','学号2','姓名2','工号2','标题2','内容2','2021-04-19 16:46:26','是',''),(73,'2021-04-19 16:46:26','学号3','姓名3','工号3','标题3','内容3','2021-04-19 16:46:26','是',''),(74,'2021-04-19 16:46:26','学号4','姓名4','工号4','标题4','内容4','2021-04-19 16:46:26','是',''),(75,'2021-04-19 16:46:26','学号5','姓名5','工号5','标题5','内容5','2021-04-19 16:46:26','是',''),(76,'2021-04-19 16:46:26','学号6','姓名6','工号6','标题6','内容6','2021-04-19 16:46:26','是','');

/*Table structure for table `xueshengyuyue` */

DROP TABLE IF EXISTS `xueshengyuyue`;

CREATE TABLE `xueshengyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shiyanshimingcheng` varchar(200) DEFAULT NULL COMMENT '实验室名称',
  `shiyanshijiweishu` varchar(200) DEFAULT NULL COMMENT '实验室机位数',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='学生预约';

/*Data for the table `xueshengyuyue` */

insert  into `xueshengyuyue`(`id`,`addtime`,`xuehao`,`xingming`,`shiyanshimingcheng`,`shiyanshijiweishu`,`jiage`,`shuliang`,`yuyueshijian`,`sfsh`,`shhf`,`ispay`) values (61,'2021-04-19 16:46:26','学号1','姓名1','实验室名称1','实验室机位数1','价格1',1,'预约时间1','是','','未支付'),(62,'2021-04-19 16:46:26','学号2','姓名2','实验室名称2','实验室机位数2','价格2',2,'预约时间2','是','','未支付'),(63,'2021-04-19 16:46:26','学号3','姓名3','实验室名称3','实验室机位数3','价格3',3,'预约时间3','是','','未支付'),(64,'2021-04-19 16:46:26','学号4','姓名4','实验室名称4','实验室机位数4','价格4',4,'预约时间4','是','','未支付'),(65,'2021-04-19 16:46:26','学号5','姓名5','实验室名称5','实验室机位数5','价格5',5,'预约时间5','是','','未支付'),(66,'2021-04-19 16:46:26','学号6','姓名6','实验室名称6','实验室机位数6','价格6',6,'预约时间6','是','','未支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
