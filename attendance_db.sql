/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : attendance_db

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2019-07-31 10:45:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_clock_info
-- ----------------------------
DROP TABLE IF EXISTS `t_clock_info`;
CREATE TABLE `t_clock_info` (
  `clock_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_no` varchar(20) DEFAULT NULL,
  `clock_in_time` datetime DEFAULT NULL,
  `clock_off_time` datetime DEFAULT NULL,
  `clock_date` date DEFAULT NULL,
  PRIMARY KEY (`clock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_clock_info
-- ----------------------------
INSERT INTO `t_clock_info` VALUES ('1', 'sy001', '2018-08-01 11:30:52', '2018-08-01 18:30:30', '2018-08-01');
INSERT INTO `t_clock_info` VALUES ('2', 'sy001', '2018-08-02 09:46:52', '2018-08-02 17:30:30', '2018-08-02');
INSERT INTO `t_clock_info` VALUES ('3', 'sy001', '2018-08-03 08:46:52', '2018-08-03 17:30:30', '2018-08-03');
INSERT INTO `t_clock_info` VALUES ('4', 'sy001', '2018-08-04 09:13:52', '2018-08-04 18:30:30', '2018-08-04');
INSERT INTO `t_clock_info` VALUES ('5', 'sy001', '2018-08-05 09:46:52', '2018-08-05 18:30:30', '2018-08-05');
INSERT INTO `t_clock_info` VALUES ('6', 'sy001', null, '2018-08-06 18:30:30', '2018-08-06');
INSERT INTO `t_clock_info` VALUES ('7', 'sy002', '2018-08-01 08:46:52', '2018-08-01 18:30:30', '2018-08-01');
INSERT INTO `t_clock_info` VALUES ('8', 'sy002', '2018-08-02 09:46:52', '2018-08-02 17:30:30', '2018-08-02');
INSERT INTO `t_clock_info` VALUES ('9', 'sy002', '2018-08-03 08:46:52', '2018-08-03 17:30:30', '2018-08-03');
INSERT INTO `t_clock_info` VALUES ('10', 'sy002', '2018-08-04 09:13:52', '2018-08-04 13:30:30', '2018-08-04');
INSERT INTO `t_clock_info` VALUES ('11', 'sy002', '2018-08-05 09:46:52', '2018-08-05 18:30:30', '2018-08-05');
INSERT INTO `t_clock_info` VALUES ('12', 'sy002', null, '2018-08-06 18:30:30', '2018-08-06');
INSERT INTO `t_clock_info` VALUES ('13', 'sy003', '2018-08-01 09:46:52', '2018-08-01 18:30:30', '2018-08-01');
INSERT INTO `t_clock_info` VALUES ('14', 'sy003', '2018-08-02 09:46:52', '2018-08-02 17:30:30', '2018-08-02');
INSERT INTO `t_clock_info` VALUES ('15', 'sy003', '2018-08-03 08:46:52', '2018-08-03 17:30:30', '2018-08-03');
INSERT INTO `t_clock_info` VALUES ('16', 'sy003', '2018-08-04 09:13:52', '2018-08-04 18:30:30', '2018-08-04');
INSERT INTO `t_clock_info` VALUES ('17', 'sy003', '2018-08-05 09:46:52', '2018-08-05 14:30:30', '2018-08-05');
INSERT INTO `t_clock_info` VALUES ('18', 'sy002', null, '2018-08-06 18:30:30', '2018-08-06');
INSERT INTO `t_clock_info` VALUES ('20', 'sy005', '2019-07-28 16:00:23', '2019-07-28 16:09:13', '2019-07-28');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `employee_no` varchar(255) CHARACTER SET utf8 NOT NULL,
  `employee_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pass_word` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hiredate` datetime NOT NULL,
  `sal` double(255,0) NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`employee_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('sy001', '许晓东', 'xuxiao', '1111', '软件开发', '2017-03-04 00:00:00', '8000', '0');
INSERT INTO `t_employee` VALUES ('sy002', '李小晖', 'lixiaohui', '1111', '软件开发', '2016-05-04 00:00:00', '10000', '0');
INSERT INTO `t_employee` VALUES ('sy003', '程明', 'chengming', '1111', '软件开发', '2015-07-04 00:00:00', '8500', '0');
INSERT INTO `t_employee` VALUES ('sy004', '范小云', 'xiaoyun', '1111', '财务', '2018-01-04 00:00:00', '5000', '0');
INSERT INTO `t_employee` VALUES ('sy005', '管理员', 'admin', '1111', '管理员', '2015-03-04 00:00:00', '8000', '1');
INSERT INTO `t_employee` VALUES ('sy006', '晓烟', 'xiaoyan', '1111', '美女', '2018-01-01 00:00:00', '8000', '0');
INSERT INTO `t_employee` VALUES ('sy007', 'huang', 'h', '1111', null, '2019-01-01 00:00:00', '8000', null);

-- ----------------------------
-- Table structure for t_staff
-- ----------------------------
DROP TABLE IF EXISTS `t_staff`;
CREATE TABLE `t_staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_no` varchar(20) DEFAULT NULL,
  `staff_name` varchar(20) DEFAULT NULL,
  `login_name` varchar(20) DEFAULT NULL,
  `pass_word` varchar(20) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` decimal(7,2) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_staff
-- ----------------------------

-- ----------------------------
-- Table structure for t_work_date
-- ----------------------------
DROP TABLE IF EXISTS `t_work_date`;
CREATE TABLE `t_work_date` (
  `work_date_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_date` date DEFAULT NULL,
  PRIMARY KEY (`work_date_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_work_date
-- ----------------------------
INSERT INTO `t_work_date` VALUES ('1', '2018-08-01');
INSERT INTO `t_work_date` VALUES ('2', '2018-08-02');
INSERT INTO `t_work_date` VALUES ('3', '2018-08-03');
INSERT INTO `t_work_date` VALUES ('4', '2018-08-04');
INSERT INTO `t_work_date` VALUES ('5', '2018-08-06');
INSERT INTO `t_work_date` VALUES ('6', '2018-08-07');
INSERT INTO `t_work_date` VALUES ('7', '2018-08-08');
INSERT INTO `t_work_date` VALUES ('8', '2018-08-09');
INSERT INTO `t_work_date` VALUES ('9', '2018-08-10');
INSERT INTO `t_work_date` VALUES ('10', '2018-08-13');
INSERT INTO `t_work_date` VALUES ('11', '2018-08-14');
INSERT INTO `t_work_date` VALUES ('12', '2018-08-15');
INSERT INTO `t_work_date` VALUES ('13', '2018-08-16');
INSERT INTO `t_work_date` VALUES ('14', '2018-08-17');
INSERT INTO `t_work_date` VALUES ('15', '2018-08-18');
INSERT INTO `t_work_date` VALUES ('16', '2018-08-20');
INSERT INTO `t_work_date` VALUES ('17', '2018-08-21');
INSERT INTO `t_work_date` VALUES ('18', '2018-08-22');
INSERT INTO `t_work_date` VALUES ('19', '2018-08-23');
INSERT INTO `t_work_date` VALUES ('20', '2018-08-24');
INSERT INTO `t_work_date` VALUES ('21', '2018-08-27');
INSERT INTO `t_work_date` VALUES ('22', '2018-08-28');
INSERT INTO `t_work_date` VALUES ('23', '2018-08-29');
INSERT INTO `t_work_date` VALUES ('24', '2018-08-30');
INSERT INTO `t_work_date` VALUES ('25', '2018-08-31');
INSERT INTO `t_work_date` VALUES ('26', '2019-07-28');
INSERT INTO `t_work_date` VALUES ('27', '2019-07-29');
INSERT INTO `t_work_date` VALUES ('28', '2019-07-30');
INSERT INTO `t_work_date` VALUES ('29', '2019-07-31');
INSERT INTO `t_work_date` VALUES ('30', '2019-08-01');
INSERT INTO `t_work_date` VALUES ('31', '2019-08-02');
INSERT INTO `t_work_date` VALUES ('32', '2019-08-03');
INSERT INTO `t_work_date` VALUES ('33', '2019-08-04');
INSERT INTO `t_work_date` VALUES ('34', '2019-08-05');
INSERT INTO `t_work_date` VALUES ('35', '2019-08-06');

-- ----------------------------
-- View structure for view_attendance_status
-- ----------------------------
DROP VIEW IF EXISTS `view_attendance_status`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_attendance_status` AS select work_date,employee_no,clock_in_time,clock_off_time,
	case 
	        when clock_in_diff<-120
			then '旷工'
		when clock_in_diff<0 
			then '迟到'
		when clock_in_diff>0
			then '正常'
		else '忘记打卡'
	end as diff_in_status,
	case 
	        when clock_off_diff>120
			then '旷工'
		when clock_off_diff>0 
			then '早退'
		when clock_off_diff<0
			then '正常'
		else '忘记打卡'
	end as diff_off_time
from view_clock_diff t ;

-- ----------------------------
-- View structure for view_clock_diff
-- ----------------------------
DROP VIEW IF EXISTS `view_clock_diff`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_clock_diff` AS select 
		work_date,
		employee_no,clock_in_time,clock_off_time,
		TIMESTAMPDIFF(MINUTE,clock_in_time,concat(work_date,' 09:00:00')) as clock_in_diff,
		TIMESTAMPDIFF(MINUTE,clock_off_time,concat(work_date,' 18:00:00')) as clock_off_diff
		from t_work_date w left join t_clock_info t 
		on w.work_date=t.clock_date ;
