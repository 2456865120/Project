

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for business_inf
-- ----------------------------
DROP TABLE IF EXISTS `business_inf`;
CREATE TABLE `business_inf` (
  `id` int NOT NULL,
  `mailmarketing` int DEFAULT NULL,
  `allianceadvertising` int DEFAULT NULL,
  `videoadvertising` int DEFAULT NULL,
  `directaccess` int DEFAULT NULL,
  `searchengine` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of business_inf
-- ----------------------------
INSERT INTO `business_inf` VALUES ('1', '120', '220', '150', '320', '820');
INSERT INTO `business_inf` VALUES ('2', '132', '182', '232', '332', '932');
INSERT INTO `business_inf` VALUES ('3', '101', '191', '201', '301', '901');
INSERT INTO `business_inf` VALUES ('4', '134', '234', '154', '334', '934');
INSERT INTO `business_inf` VALUES ('5', '90', '290', '190', '390', '1290');
INSERT INTO `business_inf` VALUES ('6', '230', '330', '330', '330', '1330');
INSERT INTO `business_inf` VALUES ('7', '210', '310', '410', '320', '1340');

-- ----------------------------
-- Table structure for checkwork_inf
-- ----------------------------
DROP TABLE IF EXISTS `checkwork_inf`;
CREATE TABLE `checkwork_inf` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DEPT_ID` int NOT NULL,
  `JOB_ID` int NOT NULL,
  `EMP_ID` int NOT NULL,
  `WORKINGDAYS` int NOT NULL,
  `DAYSLEAVE` int NOT NULL,
  `CREATEDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DAYSOUT` int DEFAULT NULL,
  PRIMARY KEY (`ID`,`EMP_ID`) USING BTREE,
  KEY `FK_EMP_DEPT` (`DEPT_ID`) USING BTREE,
  KEY `FK_EMP_JOB` (`JOB_ID`) USING BTREE,
  KEY `ID` (`ID`) USING BTREE,
  KEY `checkwork_inf_ibfk_3` (`EMP_ID`) USING BTREE,
  CONSTRAINT `che_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `employee_inf` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `che_2` FOREIGN KEY (`JOB_ID`) REFERENCES `employee_inf` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of checkwork_inf
-- ----------------------------
INSERT INTO `checkwork_inf` VALUES ('14', '1', '2', '1', '121', '22', '2022-08-26 00:04:33', '23');

-- ----------------------------
-- Table structure for code_inf
-- ----------------------------
DROP TABLE IF EXISTS `code_inf`;
CREATE TABLE `code_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of code_inf
-- ----------------------------
INSERT INTO `code_inf` VALUES ('1', 'KPHMYKTKT', '2019-03-29 14:25:14');
INSERT INTO `code_inf` VALUES ('2', 'PBB7KUYBT', '2019-03-29 16:47:29');
INSERT INTO `code_inf` VALUES ('3', '9I2AN4D3W', '2019-03-29 16:47:37');
INSERT INTO `code_inf` VALUES ('4', 'WLMGU4RZH', '2019-03-29 17:01:09');
INSERT INTO `code_inf` VALUES ('5', 'YQ2QEJ8WL', '2019-03-29 17:01:17');
INSERT INTO `code_inf` VALUES ('6', 'IMSQKMG6X', '2019-04-01 15:00:04');
INSERT INTO `code_inf` VALUES ('7', 'A7537ZTEJ', '2019-04-01 15:00:17');
INSERT INTO `code_inf` VALUES ('8', 'ZQ8VIGSF9', '2019-04-01 15:00:21');
INSERT INTO `code_inf` VALUES ('9', 'F8R7ANA6G', '2019-04-03 08:41:24');
INSERT INTO `code_inf` VALUES ('10', 'QNTGMEIXV', '2019-04-04 19:34:59');
INSERT INTO `code_inf` VALUES ('11', 'BYKZN687L', '2019-04-10 17:56:31');
INSERT INTO `code_inf` VALUES ('12', 'VDEY3V646', '2019-04-15 15:26:05');
INSERT INTO `code_inf` VALUES ('13', 'PK6K2AQNA', '2019-05-29 13:48:21');
INSERT INTO `code_inf` VALUES ('14', 'FIU8ZY2M7', '2019-05-29 13:48:29');
INSERT INTO `code_inf` VALUES ('15', 'V7P6G6WSB', '2019-05-29 13:48:31');
INSERT INTO `code_inf` VALUES ('16', 'VHVPEBDBE', '2020-04-03 00:13:09');
INSERT INTO `code_inf` VALUES ('17', 'AYPW9LTDK', '2020-04-16 15:37:30');
INSERT INTO `code_inf` VALUES ('18', '33IP3H9J5', '2020-04-16 16:00:48');
INSERT INTO `code_inf` VALUES ('19', 'NAH3B9GDT', '2020-04-23 09:53:05');
INSERT INTO `code_inf` VALUES ('20', 'EW8VGKNLT', '2020-09-01 08:49:04');
INSERT INTO `code_inf` VALUES ('21', 'XV64B2XXU', '2020-09-01 16:06:14');
INSERT INTO `code_inf` VALUES ('22', 'BL83DKBF7', '2020-09-07 09:46:43');
INSERT INTO `code_inf` VALUES ('23', 'CEVFTHAHP', '2021-03-04 09:30:38');

-- ----------------------------
-- Table structure for completion_inf
-- ----------------------------
DROP TABLE IF EXISTS `completion_inf`;
CREATE TABLE `completion_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of completion_inf
-- ----------------------------
INSERT INTO `completion_inf` VALUES ('1', '优秀');
INSERT INTO `completion_inf` VALUES ('2', '良好');
INSERT INTO `completion_inf` VALUES ('3', '不合格');

-- ----------------------------
-- Table structure for confidentialitycontract_inf
-- ----------------------------
DROP TABLE IF EXISTS `confidentialitycontract_inf`;
CREATE TABLE `confidentialitycontract_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of confidentialitycontract_inf
-- ----------------------------
INSERT INTO `confidentialitycontract_inf` VALUES ('1', '已签');
INSERT INTO `confidentialitycontract_inf` VALUES ('2', '未签');

-- ----------------------------
-- Table structure for contract_inf
-- ----------------------------
DROP TABLE IF EXISTS `contract_inf`;
CREATE TABLE `contract_inf` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DEPT_ID` int NOT NULL,
  `JOB_ID` int NOT NULL,
  `STATUS_ID` int DEFAULT '0',
  `EMP_ID` int NOT NULL,
  `TRAIN_CONTRACT` int NOT NULL,
  `LABOR_CONTRACT` int NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CONFIDENTIALITY_CONTRACT` int NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK_EMP_DEPT` (`DEPT_ID`) USING BTREE,
  KEY `FK_EMP_JOB` (`JOB_ID`) USING BTREE,
  KEY `ID` (`ID`) USING BTREE,
  KEY `checkwork_inf_ibfk_3` (`EMP_ID`) USING BTREE,
  CONSTRAINT `con_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `employee_inf` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `con_2` FOREIGN KEY (`JOB_ID`) REFERENCES `employee_inf` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of contract_inf
-- ----------------------------
INSERT INTO `contract_inf` VALUES ('11', '1', '2', '0', '1', '2', '2', '2023-03-26 18:57:50', '2');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for dept_inf
-- ----------------------------
DROP TABLE IF EXISTS `dept_inf`;
CREATE TABLE `dept_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dept_inf
-- ----------------------------
INSERT INTO `dept_inf` VALUES ('1', '技术部', '技术研发');
INSERT INTO `dept_inf` VALUES ('2', '运营部', '运营部');
INSERT INTO `dept_inf` VALUES ('3', '财务部', '财务分析与统计计划');
INSERT INTO `dept_inf` VALUES ('5', '总公办', '总公办');
INSERT INTO `dept_inf` VALUES ('6', '市场部', '市场部');
INSERT INTO `dept_inf` VALUES ('7', '教学部', '教学部');
INSERT INTO `dept_inf` VALUES ('10', '打赏钉钉', '阿松大阿达阿萨');

-- ----------------------------
-- Table structure for document_inf
-- ----------------------------
DROP TABLE IF EXISTS `document_inf`;
CREATE TABLE `document_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `filename` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of document_inf
-- ----------------------------
INSERT INTO `document_inf` VALUES ('1', '实习协议', '实习协议.doc', '实习协议文档信息', '2019-05-19 10:37:39', '1');
INSERT INTO `document_inf` VALUES ('2', '导入模板', '员工导入模板.xlsx', '员工导入模板下载', '2020-04-28 10:16:51', '1');
INSERT INTO `document_inf` VALUES ('27', '就放了几啊', '827DH160812HC01-002.jpg', '发发那放假了', '2020-07-23 09:34:08', '1');
INSERT INTO `document_inf` VALUES ('28', '你好吗', 'linux资料.txt', '我很好呀啊', '2021-03-16 18:57:37', '1');
INSERT INTO `document_inf` VALUES ('30', '第五次测试', 'dang.jpg', '第五次测试', '2022-08-23 11:49:23', '1');
INSERT INTO `document_inf` VALUES ('31', '第三次测试', 'test.jpg', '第三次测试', '2022-08-23 11:49:46', '1');
INSERT INTO `document_inf` VALUES ('32', '第六次测试', 'zm.jpg', '第六次测试', '2022-08-23 12:02:12', '1');
INSERT INTO `document_inf` VALUES ('33', '测试测试', 'zm.jpg', '中国共产党党徽测试', '2022-08-25 11:23:38', '1');
INSERT INTO `document_inf` VALUES ('34', '测试上传文件', 'suoluetu.png', '测试上传文件', '2022-08-25 11:54:39', '1');

-- ----------------------------
-- Table structure for education_inf
-- ----------------------------
DROP TABLE IF EXISTS `education_inf`;
CREATE TABLE `education_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of education_inf
-- ----------------------------
INSERT INTO `education_inf` VALUES ('1', '大专');
INSERT INTO `education_inf` VALUES ('2', '本科');
INSERT INTO `education_inf` VALUES ('3', '硕士');
INSERT INTO `education_inf` VALUES ('4', '博士');
INSERT INTO `education_inf` VALUES ('5', '高中');

-- ----------------------------
-- Table structure for employee_inf
-- ----------------------------
DROP TABLE IF EXISTS `employee_inf`;
CREATE TABLE `employee_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dept_id` int NOT NULL,
  `job_id` int NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `card_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex_id` int DEFAULT NULL,
  `education_id` int DEFAULT NULL,
  `creatTimeStr` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_EMP_DEPT` (`dept_id`) USING BTREE,
  KEY `FK_EMP_JOB` (`job_id`) USING BTREE,
  CONSTRAINT `FK_EMP_DEPT` FOREIGN KEY (`dept_id`) REFERENCES `dept_inf` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_EMP_JOB` FOREIGN KEY (`job_id`) REFERENCES `job_inf` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of employee_inf
-- ----------------------------
INSERT INTO `employee_inf` VALUES ('1', '1', '2', '徐政', '125865423658956632', '河北省石家庄市', '13935486521', '1', '3', '2023-04-15 11:28:08', '23');
INSERT INTO `employee_inf` VALUES ('3', '1', '3', '袭人', '620523199410103810', '江苏', '13902001111', '2', '3', '2023-04-10 23:40:31', '3');
INSERT INTO `employee_inf` VALUES ('5', '3', '9', '翎幺', '620523199810103810', '甘肃', '13902001111', '2', '3', '2023-04-10 23:40:30', '5');
INSERT INTO `employee_inf` VALUES ('7', '3', '1', '小三', '410303167899009887', '浙江', '110', '1', '3', '2023-04-10 23:40:28', '6');
INSERT INTO `employee_inf` VALUES ('10', '3', '1', '小二', '410303167899009866', '山西', '999', '2', '3', '2023-04-10 23:40:24', '2');
INSERT INTO `employee_inf` VALUES ('12', '5', '7', '隔壁老王', '410303197609110111', '北京', '13146224151', '1', '4', '2023-04-10 23:40:25', '31');
INSERT INTO `employee_inf` VALUES ('13', '5', '7', '唐僧', '142729121202050019', '山西', '18234803580', '2', '1', '2023-04-10 23:40:14', '32');
INSERT INTO `employee_inf` VALUES ('14', '1', '6', '爱丽丝', '410303167899009887', '浙江', '13902001111', '2', '4', '2023-04-10 23:40:26', '5');
INSERT INTO `employee_inf` VALUES ('27', '1', '11', '张飞', '142729180001010022', '浙江', '18888888888', '1', '3', '2023-04-10 23:40:27', '1');
INSERT INTO `employee_inf` VALUES ('28', '3', '1', '大三', '410303167899009878', '新疆', '11022232232', '1', '3', '2023-04-10 23:36:59', '1');
INSERT INTO `employee_inf` VALUES ('29', '3', '1', '都US', '410303167899009878', '北京', '12356567110', '1', '3', '2023-04-10 23:37:03', '1');
INSERT INTO `employee_inf` VALUES ('30', '3', '1', '看看书', '410303167899009878', '浙江', '15677789110', '2', '3', '2023-04-10 23:37:08', '1');
INSERT INTO `employee_inf` VALUES ('33', '3', '1', '小三', '410303167899009878', '陕西', '11022232232', '1', '3', '2023-04-10 23:37:11', null);
INSERT INTO `employee_inf` VALUES ('40', '1', '1', '请问', '111111111111111111', '陕西省西安市', '13658965486', '1', '1', '2023-04-15 11:03:46', '23');
INSERT INTO `employee_inf` VALUES ('41', '7', '9', '阿迪斯', '111111111111111111', '河北省石家庄市', '13652458651', '1', '1', '2023-04-15 11:08:54', '23');

-- ----------------------------
-- Table structure for jobtype_inf
-- ----------------------------
DROP TABLE IF EXISTS `jobtype_inf`;
CREATE TABLE `jobtype_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of jobtype_inf
-- ----------------------------
INSERT INTO `jobtype_inf` VALUES ('1', '人才项目');
INSERT INTO `jobtype_inf` VALUES ('2', '技术方向');
INSERT INTO `jobtype_inf` VALUES ('3', '设计方向');
INSERT INTO `jobtype_inf` VALUES ('4', '产品方向');
INSERT INTO `jobtype_inf` VALUES ('5', '客户服务');
INSERT INTO `jobtype_inf` VALUES ('6', '金融方向');
INSERT INTO `jobtype_inf` VALUES ('7', '市场与职能方向');

-- ----------------------------
-- Table structure for job_inf
-- ----------------------------
DROP TABLE IF EXISTS `job_inf`;
CREATE TABLE `job_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of job_inf
-- ----------------------------
INSERT INTO `job_inf` VALUES ('1', '职员', '职员');
INSERT INTO `job_inf` VALUES ('2', 'Java开发工程师', 'Java开发工程师');
INSERT INTO `job_inf` VALUES ('3', 'Java中级开发工程师', 'Java中级开发工作');
INSERT INTO `job_inf` VALUES ('6', '架构师', '架构师');
INSERT INTO `job_inf` VALUES ('7', '主管', '主管');
INSERT INTO `job_inf` VALUES ('9', '总经理', '负责项目总体工作');
INSERT INTO `job_inf` VALUES ('11', '前端工程师', '主要负责前端的开发');

-- ----------------------------
-- Table structure for laborcontract_inf
-- ----------------------------
DROP TABLE IF EXISTS `laborcontract_inf`;
CREATE TABLE `laborcontract_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of laborcontract_inf
-- ----------------------------
INSERT INTO `laborcontract_inf` VALUES ('1', '已签');
INSERT INTO `laborcontract_inf` VALUES ('2', '未签');

-- ----------------------------
-- Table structure for leavestatus_inf
-- ----------------------------
DROP TABLE IF EXISTS `leavestatus_inf`;
CREATE TABLE `leavestatus_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of leavestatus_inf
-- ----------------------------
INSERT INTO `leavestatus_inf` VALUES ('1', '批准');
INSERT INTO `leavestatus_inf` VALUES ('2', '未批准');

-- ----------------------------
-- Table structure for leavetype_inf
-- ----------------------------
DROP TABLE IF EXISTS `leavetype_inf`;
CREATE TABLE `leavetype_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of leavetype_inf
-- ----------------------------
INSERT INTO `leavetype_inf` VALUES ('1', '病假');
INSERT INTO `leavetype_inf` VALUES ('2', '事假');

-- ----------------------------
-- Table structure for leave_inf
-- ----------------------------
DROP TABLE IF EXISTS `leave_inf`;
CREATE TABLE `leave_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `startdata` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enddata` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `leavedays` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `leavetype` int DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `leavestatus` int DEFAULT '2',
  `leavetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `lea_1` (`emp_id`) USING BTREE,
  KEY `lea_2` (`dept_id`) USING BTREE,
  KEY `lea_3` (`job_id`) USING BTREE,
  CONSTRAINT `lea_3` FOREIGN KEY (`job_id`) REFERENCES `employee_inf` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of leave_inf
-- ----------------------------
INSERT INTO `leave_inf` VALUES ('19', '1', '1', '2', '2023-04-01', '2023-04-18', '17', '1', '啊大苏打实打实打算', '2', '2023-04-18 05:04:14');
INSERT INTO `leave_inf` VALUES ('20', '1', '1', '2', '2023-03-27', '2023-04-21', '25', '2', '23123123', '2', '2023-04-18 05:07:06');
INSERT INTO `leave_inf` VALUES ('21', '1', '1', '2', '2023-04-06', '2023-04-29', '23', '2', '请问撒旦', '2', '2023-04-18 05:13:08');
INSERT INTO `leave_inf` VALUES ('22', '1', '1', '2', '2023-05-05', '2023-05-06', '1', '1', '感冒', '2', '2023-04-18 05:14:59');

-- ----------------------------
-- Table structure for notice_inf
-- ----------------------------
DROP TABLE IF EXISTS `notice_inf`;
CREATE TABLE `notice_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_notice` (`user_id`) USING BTREE,
  CONSTRAINT `user_notice` FOREIGN KEY (`user_id`) REFERENCES `user_inf` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of notice_inf
-- ----------------------------
INSERT INTO `notice_inf` VALUES ('1', '你好', '明天就是你自己的生日了', '2019-01-29 15:06:36', '1');
INSERT INTO `notice_inf` VALUES ('2', '下午开会', '技术部下午3.00开会,请各部门准时参加会议', '2019-01-29 15:13:24', '2');
INSERT INTO `notice_inf` VALUES ('3', '五一放假', '五一放假安排时间调整及时通知', '2019-02-22 19:06:23', '1');
INSERT INTO `notice_inf` VALUES ('4', '发布新消息', '在普通用户页面实时提示！！！', '2019-03-03 17:21:30', '1');
INSERT INTO `notice_inf` VALUES ('5', '年终考核结果公', '请各部门主管3.25号之前汇总上报部门考核情况！！！', '2019-03-03 20:10:27', '1');
INSERT INTO `notice_inf` VALUES ('6', '公告测试111', '公告测试内容一，发送邮件111', '2019-05-20 10:19:39', '1');
INSERT INTO `notice_inf` VALUES ('7', '开会', '开会开会开会开会开会', '2019-05-29 13:54:38', '1');
INSERT INTO `notice_inf` VALUES ('9', 'helloworld', '你好世界你好世界你好世界', '2022-08-23 10:20:36', '1');
INSERT INTO `notice_inf` VALUES ('10', '你好c', '你好c你好java你好java你好java', '2022-08-23 10:25:06', '1');

-- ----------------------------
-- Table structure for recruitmentstatus_inf
-- ----------------------------
DROP TABLE IF EXISTS `recruitmentstatus_inf`;
CREATE TABLE `recruitmentstatus_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of recruitmentstatus_inf
-- ----------------------------
INSERT INTO `recruitmentstatus_inf` VALUES ('1', '正在招聘');
INSERT INTO `recruitmentstatus_inf` VALUES ('2', '已结束');

-- ----------------------------
-- Table structure for recruitment_inf
-- ----------------------------
DROP TABLE IF EXISTS `recruitment_inf`;
CREATE TABLE `recruitment_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jobtype` int DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `peoplenum` int DEFAULT NULL,
  `status` int DEFAULT '1',
  `enddate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of recruitment_inf
-- ----------------------------
INSERT INTO `recruitment_inf` VALUES ('1', '1', '管培生', '1', '1', '2019-06-30');
INSERT INTO `recruitment_inf` VALUES ('2', '2', 'java初级工程师', '2', '2', '2019-5-30');
INSERT INTO `recruitment_inf` VALUES ('3', '3', 'UI设计工程师', '5', '1', '2019-6-30');
INSERT INTO `recruitment_inf` VALUES ('5', '5', '客服专员', '2', '1', '2019-6-30');
INSERT INTO `recruitment_inf` VALUES ('6', '6', '会计师', '1', '1', '2019-6-30');
INSERT INTO `recruitment_inf` VALUES ('7', '7', '行政专员', '2', '2', '2019-5-30');
INSERT INTO `recruitment_inf` VALUES ('8', '2', '算法工程师', '2', '1', '2019-6-30');
INSERT INTO `recruitment_inf` VALUES ('9', '2', 'C++开发工程师', '1', '1', '2019-06-30');
INSERT INTO `recruitment_inf` VALUES ('10', '2', 'Java专家', '1', '1', '2019-06-30');
INSERT INTO `recruitment_inf` VALUES ('11', '4', '产品经理', '1', '1', '2019-06-30');
INSERT INTO `recruitment_inf` VALUES ('12', '6', '高级会计师', '1', '1', '2019-06-30');
INSERT INTO `recruitment_inf` VALUES ('13', '5', '高级客服专员', '2', '1', '2019-06-30');

-- ----------------------------
-- Table structure for resume_inf
-- ----------------------------
DROP TABLE IF EXISTS `resume_inf`;
CREATE TABLE `resume_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jobtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sex_id` int DEFAULT NULL,
  `education_id` int DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of resume_inf
-- ----------------------------
INSERT INTO `resume_inf` VALUES ('1', '设计方向', 'UI设计工程师', '翎幺', '13902001111@163.com', '1', '2', '13902001111', '2', '翎幺-苏州简历(2019年5月版) .pdf', '2019-06-03 20:27:12');
INSERT INTO `resume_inf` VALUES ('2', '技术方向', 'C++开发工程师', '翎幺', '13902001111@163.com', '1', '1', '13902001111', '1', '翎幺-苏州简历(2019年5月版) .pdf', '2019-06-04 08:55:09');
INSERT INTO `resume_inf` VALUES ('3', '市场与职能方向', '行政专员', '安安', '13902001111@163.com', '1', '2', '13902001111', '1', '翎幺-西安简历(2019年5月版) .pdf', '2019-06-04 09:41:18');
INSERT INTO `resume_inf` VALUES ('4', '产品方向', '产品研发工程师', '都受到', '13902001111@163.com', '2', '4', '13902001111', '2', '翎幺-简历(2019年6月版) .pdf', '2019-06-04 10:30:18');
INSERT INTO `resume_inf` VALUES ('5', '客户服务', '客服专员', '苟富贵', '13902001111@qq.com', '1', '3', '13902001111', '1', '翎幺-简历(2019年6月版) .pdf', '2019-06-04 10:30:54');

-- ----------------------------
-- Table structure for salary_inf
-- ----------------------------
DROP TABLE IF EXISTS `salary_inf`;
CREATE TABLE `salary_inf` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DEPT_ID` int NOT NULL,
  `JOB_ID` int NOT NULL,
  `EMP_ID` int NOT NULL,
  `SALARY_STATION` int NOT NULL,
  `SALARY_LEVEL` int NOT NULL,
  `SENIORITY_PAY` int DEFAULT NULL,
  `PERFORMANCE` int DEFAULT NULL,
  `INDIVIDUAL_INCOME` float(11,0) NOT NULL,
  `CREATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `FK_EMP_DEPT` (`DEPT_ID`) USING BTREE,
  KEY `FK_EMP_JOB` (`JOB_ID`) USING BTREE,
  KEY `ID` (`ID`) USING BTREE,
  KEY `salary_inf_ibfk_3` (`EMP_ID`) USING BTREE,
  CONSTRAINT `sal_1` FOREIGN KEY (`DEPT_ID`) REFERENCES `employee_inf` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sal_2` FOREIGN KEY (`JOB_ID`) REFERENCES `employee_inf` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of salary_inf
-- ----------------------------
INSERT INTO `salary_inf` VALUES ('8', '1', '2', '1', '2', '4', '5', '4', '2', '2023-03-26 05:35:20');

-- ----------------------------
-- Table structure for sex_inf
-- ----------------------------
DROP TABLE IF EXISTS `sex_inf`;
CREATE TABLE `sex_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sex_inf
-- ----------------------------
INSERT INTO `sex_inf` VALUES ('1', '男');
INSERT INTO `sex_inf` VALUES ('2', '女');
INSERT INTO `sex_inf` VALUES ('6', '其它');

-- ----------------------------
-- Table structure for staticid_inf
-- ----------------------------
DROP TABLE IF EXISTS `staticid_inf`;
CREATE TABLE `staticid_inf` (
  `staticId` int NOT NULL,
  PRIMARY KEY (`staticId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of staticid_inf
-- ----------------------------
INSERT INTO `staticid_inf` VALUES ('14');

-- ----------------------------
-- Table structure for status_inf
-- ----------------------------
DROP TABLE IF EXISTS `status_inf`;
CREATE TABLE `status_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of status_inf
-- ----------------------------
INSERT INTO `status_inf` VALUES ('1', '已审核');
INSERT INTO `status_inf` VALUES ('2', '未审核');

-- ----------------------------
-- Table structure for traincontract_inf
-- ----------------------------
DROP TABLE IF EXISTS `traincontract_inf`;
CREATE TABLE `traincontract_inf` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of traincontract_inf
-- ----------------------------
INSERT INTO `traincontract_inf` VALUES ('1', '已签');
INSERT INTO `traincontract_inf` VALUES ('2', '未签');

-- ----------------------------
-- Table structure for traindata_inf
-- ----------------------------
DROP TABLE IF EXISTS `traindata_inf`;
CREATE TABLE `traindata_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `filename` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of traindata_inf
-- ----------------------------
INSERT INTO `traindata_inf` VALUES ('1', '大圣归来', '0ec8cc80112a2d6.mp4', '大圣归来一', '2019-05-19 09:52:55', '1');
INSERT INTO `traindata_inf` VALUES ('2', '大圣归来', '0ec8cc80112a2d7.mp4', '大圣归来二', '2019-05-19 10:04:18', '1');
INSERT INTO `traindata_inf` VALUES ('3', '北京北京', '群星 - 北京欢迎你.mp4', '北京欢迎你', '2019-05-19 12:15:39', '1');
INSERT INTO `traindata_inf` VALUES ('43', '中北大学', '员工管理修改完成.mp4', '中北大学很好', '2020-09-08 10:01:37', '1');
INSERT INTO `traindata_inf` VALUES ('44', '第三次测试', 'spring-mail.xml', '第三次测试', '2022-08-24 04:47:30', '1');
INSERT INTO `traindata_inf` VALUES ('45', '第二次测试', '于笑扬java综合知识点总结 必背.doc', '第二次测试', '2022-08-24 04:48:50', '1');
INSERT INTO `traindata_inf` VALUES ('46', '测试视频', 'test.mp4', '测试啊视频', '2022-08-24 05:16:42', '1');
INSERT INTO `traindata_inf` VALUES ('48', '视频的测试一', 'test.mp4', '视频的测试一', '2022-08-26 12:00:04', '1');

-- ----------------------------
-- Table structure for train_inf
-- ----------------------------
DROP TABLE IF EXISTS `train_inf`;
CREATE TABLE `train_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  `job_id` int DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `startdata` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enddata` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `totallength` int DEFAULT NULL,
  `completion` int DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `traintime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `lea_1` (`emp_id`) USING BTREE,
  KEY `lea_2` (`dept_id`) USING BTREE,
  KEY `lea_3` (`job_id`) USING BTREE,
  CONSTRAINT `train_inf_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `employee_inf` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `train_inf_ibfk_3` FOREIGN KEY (`job_id`) REFERENCES `employee_inf` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of train_inf
-- ----------------------------
INSERT INTO `train_inf` VALUES ('1', '1', '1', '1', '十大阿三', '2023-03-26 18:57:50', '2023-03-30 18:57:50', '4', '1', '90', '2023-04-18 18:12:37');

-- ----------------------------
-- Table structure for uservisit_inf
-- ----------------------------
DROP TABLE IF EXISTS `uservisit_inf`;
CREATE TABLE `uservisit_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `exit_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `visit_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `system` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `loginname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `iphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=649 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of uservisit_inf
-- ----------------------------
INSERT INTO `uservisit_inf` VALUES ('1', '2019-02-12 09:13:56', '2019-02-12 20:10:21', '117.157.184.39', '北京 移动', '移动端', 'Chrome', 'Android', '57.0.2987.132', 'admin', 'HUAWEIFIG-AL10');
INSERT INTO `uservisit_inf` VALUES ('2', '2019-02-12 09:16:46', '2019-02-12 20:10:21', '117.157.180.39', '北京 移动', 'PC端', 'Firefox', 'Windows', '65.0', 'admin', 'Windows NT 10.0; Win64; x64');
INSERT INTO `uservisit_inf` VALUES ('3', '2019-02-12 09:17:19', '2019-02-12 20:10:21', '124.152.216.170', '北京 联通', '移动端', 'Mobile Safari', 'Android', '4.0', 'admin', 'HUAWEICLT-AL00');
INSERT INTO `uservisit_inf` VALUES ('24', '2020-04-30 14:07:08', '2020-04-30 14:07:14', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('25', '2020-04-30 14:08:37', '2020-04-30 14:08:40', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('27', '2020-09-04 10:37:53', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('28', '2020-09-04 10:45:11', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('29', '2020-09-04 10:51:14', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('30', '2020-09-04 10:54:08', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('31', '2020-09-04 14:39:26', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('32', '2020-09-04 14:59:50', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('33', '2020-09-04 15:00:55', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('34', '2020-09-04 15:01:18', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('35', '2020-09-04 15:04:43', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('36', '2020-09-04 15:05:40', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('37', '2020-09-04 15:52:29', '2020-09-04 15:52:49', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('38', '2020-09-04 15:55:51', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('39', '2020-09-04 15:59:20', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('40', '2020-09-04 16:04:46', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('41', '2020-09-04 16:22:27', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('42', '2020-09-07 09:21:53', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('43', '2020-09-07 09:39:38', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('44', '2020-09-07 09:41:24', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('45', '2020-09-07 11:00:46', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('46', '2020-09-07 11:03:27', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('47', '2020-09-07 11:05:51', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('48', '2020-09-07 14:36:09', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('49', '2020-09-07 14:40:26', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('50', '2020-09-07 15:00:58', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('51', '2020-09-07 15:01:56', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('52', '2020-09-07 15:04:01', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('53', '2020-09-07 15:05:04', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('54', '2020-09-07 15:13:09', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('55', '2020-09-07 15:50:27', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('56', '2020-09-07 16:01:23', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('57', '2020-09-07 16:09:52', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('58', '2020-09-07 16:22:28', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('59', '2020-09-07 16:25:34', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('60', '2020-09-07 16:28:27', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('61', '2020-09-07 16:38:55', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('62', '2020-09-07 16:41:10', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('63', '2020-09-07 16:42:43', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('64', '2020-09-07 16:44:38', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('65', '2020-09-07 16:47:01', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('66', '2020-09-07 16:48:33', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('67', '2020-09-07 16:50:57', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('68', '2020-09-07 16:53:19', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('69', '2020-09-07 16:54:26', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('70', '2020-09-07 16:55:54', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('71', '2020-09-08 08:06:25', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('72', '2020-09-08 08:17:02', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('73', '2020-09-08 08:32:36', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('74', '2020-09-08 09:13:41', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('75', '2020-09-08 09:20:24', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('76', '2020-09-08 09:35:02', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('77', '2020-09-08 09:45:37', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('78', '2020-09-08 09:59:52', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('79', '2020-09-08 14:42:47', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('80', '2020-09-08 15:27:05', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('81', '2020-09-08 15:47:34', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('82', '2020-09-08 15:55:27', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('83', '2020-09-08 16:05:31', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('84', '2020-09-08 16:20:32', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('85', '2020-09-18 10:10:13', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('86', '2020-09-18 10:28:25', '2020-09-18 10:28:29', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('87', '2020-09-18 10:34:24', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('88', '2020-11-06 16:24:49', '2020-11-06 16:35:36', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('89', '2021-02-03 18:35:31', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('90', '2021-02-03 18:41:20', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('91', '2021-02-03 18:52:58', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('92', '2021-02-06 11:18:01', null, '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('93', '2021-03-04 11:36:55', '2021-03-04 11:40:39', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('94', '2021-03-08 09:09:07', '2021-03-08 09:12:12', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('95', '2021-03-08 09:14:00', '2021-03-08 09:16:49', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'xuzheng', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('96', '2021-03-08 09:16:59', '2021-03-08 09:18:02', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('97', '2021-03-08 09:18:13', '2021-03-08 09:21:45', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'xuzheng', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('98', '2021-03-08 09:22:07', '2021-03-08 09:28:58', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('99', '2021-03-08 09:29:08', '2021-03-08 09:31:49', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'xuzheng', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('100', '2021-03-09 09:24:50', '2021-03-09 09:31:36', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('101', '2021-03-09 09:32:38', '2021-03-09 09:35:43', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('102', '2021-03-09 09:41:34', '2021-03-09 09:44:37', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'xuzheng', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('103', '2021-03-09 09:44:48', '2021-03-09 09:47:26', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('104', '2021-03-09 09:47:39', '2021-03-09 09:52:51', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'xuzheng', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('105', '2021-03-10 09:13:39', '2021-03-10 09:14:18', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('106', '2021-03-10 09:14:46', '2021-03-10 09:25:26', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'xuzheng', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('107', '2021-03-10 09:25:36', '2021-03-10 09:26:20', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', '71.0.3578.98', 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('108', '2021-03-16 06-53-34', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('109', '2021-03-16 06-55-53', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('110', '2021-03-19 01-57-59', '2021-03-19 01-58-48', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('111', '2021-03-19 01-59-04', null, '10.10.110.212', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('112', '2021-03-19 02-32-15', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('113', '2021-10-15 10-24-25', '2021-10-15 10-33-07', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('114', '2021-10-15 10-35-54', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('115', '2021-10-15 10-36-36', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('116', '2021-10-15 11-29-35', '2021-10-15 11-32-30', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('117', '2021-10-15 11-38-05', '2021-10-15 11-38-48', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('118', '2021-10-15 11-39-01', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'ABCDEF', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('119', '2021-10-15 11-49-48', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('120', '2021-10-15 02-09-23', null, '10.10.14.213', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('121', '2021-10-18 02-37-07', null, '10.10.14.213', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('122', '2021-10-19 09-06-35', null, '10.10.14.213', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('123', '2021-10-19 11-19-35', null, '10.10.14.213', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('124', '2021-10-20 09-01-41', null, '10.10.14.213', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('125', '2021-10-20 09-09-04', null, '10.10.14.213', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('126', '2021-10-20 09-09-56', '2021-10-20 09-51-42', '10.10.14.213', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('127', '2021-10-20 09-51-59', null, '10.10.14.213', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'ABCDEF', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('128', '2022-01-16 11-38-28', '2022-01-16 11-38-38', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('129', '2022-01-16 11-38-50', '2022-01-16 11-43-34', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('130', '2022-01-16 11-44-12', '2022-01-16 11-47-14', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('131', '2022-01-16 11-47-31', '2022-01-16 11-48-47', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'xuzheng', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('132', '2022-01-16 11-48-55', '2022-01-16 11-50-39', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('133', '2022-01-16 11-51-01', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '97.0.4692.71 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('134', '2022-01-16 11-51-26', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'xuzheng', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('135', '2022-01-17 09-30-54', '2022-01-17 09-41-24', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('136', '2022-01-17 09-41-38', '2022-01-17 09-44-24', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'xuzheng', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('137', '2022-01-17 09-52-50', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '97.0.4692.71 Safari', 'xuzheng', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('138', '2022-01-17 09-53-56', '2022-01-17 10-04-57', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('139', '2022-01-17 11-18-29', '2022-01-17 11-19-14', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('140', '2022-01-18 09-09-12', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('141', '2022-01-18 09:53:36', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('142', '2022-01-18 10:02:10', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('143', '2022-01-18 10:02:24', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('144', '2022-01-18 10:04:43', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('145', '2022-01-18 10:09:28', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('146', '2022-01-18 10:10:41', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('147', '2022-01-18 10:12:58', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('148', '2022-01-18 10:14:01', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('149', '2022-01-18 10:22:51', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '97.0.4692.71 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('150', '2022-01-18 10:27:43', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('151', '2022-01-18 10:29:00', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'xuzheng', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('152', '2022-01-18 10:30:56', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('153', '2022-01-18 10:33:37', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('154', '2022-01-18 11:10:31', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('155', '2022-01-18 11:28:08', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('156', '2022-01-18 11:30:55', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('157', '2022-01-18 11:34:07', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('158', '2022-01-18 11:39:32', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('159', '2022-01-18 11:43:24', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('160', '2022-01-18 02:05:02', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('161', '2022-01-18 02:09:11', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('162', '2022-01-18 02:32:31', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('163', '2022-01-18 02:34:44', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('164', '2022-01-18 02:37:29', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('165', '2022-01-18 02:42:06', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('166', '2022-01-18 02:43:25', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('167', '2022-01-18 02:49:46', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('168', '2022-01-19 09-05-16', '2022-01-19 09-26-06', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('169', '2022-01-19 09-26-15', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('170', '2022-01-20 09-04-31', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('171', '2022-01-21 04-05-57', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('172', '2022-01-21 04-45-29', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'xuzheng', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('173', '2022-06-16 18:08:16', '2022-06-16 18:10:53', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('174', '2022-06-16 18:11:24', '2022-06-16 18:17:31', '0:0:0:0:0:0:0:1', null, 'PC端', 'Chrome', 'Windows', null, 'admin', 'Windows NT 10.0; Win64');
INSERT INTO `uservisit_inf` VALUES ('175', '2022-08-19 02-39-19', '2022-08-19 02-54-57', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('176', '2022-08-19 02-55-33', '2022-08-19 03-00-09', '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'xuzheng', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('177', '2022-08-19 03-03-33', null, '192.168.136.1', '河南', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '71.0.3578.98 Safari', 'admin', 'DESKTOP-95V3CTN');
INSERT INTO `uservisit_inf` VALUES ('178', '2022-08-23 09:13:09', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('179', '2022-08-23 09:17:37', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('180', '2022-08-23 09:19:20', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('181', '2022-08-23 09:27:49', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('182', '2022-08-23 09:29:11', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('183', '2022-08-23 09:30:27', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('184', '2022-08-23 09:33:27', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('185', '2022-08-23 09:40:45', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('314', '2022-08-25 12:36:03', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('315', '2022-08-25 12:37:25', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzhenga', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('316', '2022-08-25 12:40:10', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('317', '2022-08-25 12:45:24', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('318', '2022-08-25 12:47:59', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('319', '2022-08-25 12:50:21', '2022-08-25 12:51:04', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzhenga', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('320', '2022-08-25 12:52:30', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzhenga', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('321', '2022-08-25 12:53:37', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('322', '2022-08-25 12:59:59', '2022-08-25 01:00:36', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('323', '2022-08-25 01:01:00', '2022-08-25 01:03:23', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('324', '2022-08-25 01:03:33', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('325', '2022-08-25 01:16:08', '2022-08-25 01:16:15', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('326', '2022-08-25 01:16:23', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('327', '2022-08-25 01:24:49', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('328', '2022-08-25 01:33:53', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('329', '2022-08-25 01:40:47', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('330', '2022-08-25 01:45:05', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('331', '2022-08-25 01:50:40', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('332', '2022-08-25 01:56:03', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('333', '2022-08-25 08:52:01', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('334', '2022-08-25 08:57:03', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('335', '2022-08-25 10:54:01', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('336', '2022-08-25 10:59:14', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('337', '2022-08-25 11:06:56', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('338', '2022-08-25 11:09:06', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('339', '2022-08-25 11:16:57', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('340', '2022-08-25 11:33:11', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('341', '2022-08-25 12:05:12', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('342', '2022-08-25 02:52:42', '2022-08-25 02:53:26', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('343', '2022-08-25 02:53:51', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('344', '2022-08-25 03:21:25', '2022-08-25 03:21:32', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('345', '2022-08-25 03:21:42', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('346', '2022-08-25 03:28:08', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('347', '2022-08-25 03:33:00', '2022-08-25 03:33:05', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('348', '2022-08-25 03:33:18', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('349', '2022-08-25 03:36:07', '2022-08-25 03:36:16', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('350', '2022-08-25 03:36:24', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('351', '2022-08-25 03:39:01', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('352', '2022-08-25 03:42:51', '2022-08-25 03:42:57', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('353', '2022-08-25 03:43:09', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('354', '2022-08-25 03:45:01', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('355', '2022-08-25 03:50:48', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('356', '2022-08-25 04:02:33', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('357', '2022-08-25 04:03:32', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('358', '2022-08-25 04:08:34', '2022-08-25 04:08:46', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('359', '2022-08-25 04:09:06', '2022-08-25 04:10:15', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('360', '2022-08-25 04:10:24', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('361', '2022-08-25 04:24:29', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('362', '2022-08-25 05:05:03', '2022-08-25 05:05:09', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('363', '2022-08-25 05:05:19', '2022-08-25 05:05:24', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('364', '2022-08-25 05:05:31', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('365', '2022-08-25 05:10:25', '2022-08-25 05:10:34', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('366', '2022-08-25 05:10:52', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('367', '2022-08-25 05:18:38', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('368', '2022-08-25 05:26:34', '2022-08-25 05:27:00', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('369', '2022-08-25 05:27:06', '2022-08-25 05:27:20', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('370', '2022-08-25 05:27:29', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('371', '2022-08-25 05:31:05', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('372', '2022-08-25 05:31:54', '2022-08-25 05:31:59', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('373', '2022-08-25 05:32:07', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('374', '2022-08-25 05:40:07', '2022-08-25 05:40:14', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('375', '2022-08-25 05:40:22', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('376', '2022-08-25 05:44:21', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('377', '2022-08-25 05:46:45', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('378', '2022-08-25 05:46:45', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('379', '2022-08-25 05:48:08', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('380', '2022-08-25 06:09:02', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('381', '2022-08-25 06:10:24', '2022-08-25 06:11:06', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('382', '2022-08-25 06:11:17', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('383', '2022-08-25 06:30:06', '2022-08-25 06:30:10', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('384', '2022-08-25 06:30:20', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('385', '2022-08-25 06:32:48', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('386', '2022-08-25 06:33:53', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('387', '2022-08-25 06:34:11', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('388', '2022-08-25 06:35:51', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('389', '2022-08-25 06:37:26', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('390', '2022-08-25 06:39:40', '2022-08-25 06:39:45', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('391', '2022-08-25 06:39:54', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('392', '2022-08-25 06:42:48', '2022-08-25 06:42:53', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('393', '2022-08-25 06:43:07', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('394', '2022-08-25 06:45:04', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('395', '2022-08-25 06:45:59', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('396', '2022-08-25 06:50:36', '2022-08-25 06:50:41', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('397', '2022-08-25 06:50:50', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('398', '2022-08-25 06:54:04', '2022-08-25 06:54:08', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('399', '2022-08-25 06:54:18', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('400', '2022-08-25 06:57:31', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('401', '2022-08-25 10:12:39', '2022-08-25 10:12:44', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('402', '2022-08-25 10:12:58', '2022-08-25 10:13:14', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('403', '2022-08-25 10:13:21', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('405', '2022-08-25 10:51:53', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('406', '2022-08-25 10:56:58', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('407', '2022-08-25 11:00:24', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('408', '2022-08-25 11:00:48', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('409', '2022-08-25 11:13:00', '2022-08-25 11:29:14', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('410', '2022-08-25 11:29:24', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('411', '2022-08-25 11:30:12', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzhenga', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('412', '2022-08-25 11:39:50', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('413', '2022-08-25 11:40:36', '2022-08-25 11:40:43', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'zhangfei', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('414', '2022-08-25 11:41:25', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'zhangfei', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('415', '2022-08-25 11:43:28', '2022-08-25 11:43:51', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('416', '2022-08-25 11:44:01', '2022-08-25 11:44:07', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'zhangfei', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('417', '2022-08-25 11:44:55', '2022-08-25 11:45:03', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'zhangfei', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('418', '2022-08-25 11:45:11', '2022-08-26 12:02:36', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('419', '2022-08-26 12:03:06', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzhenga', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('420', '2022-08-26 12:03:34', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'xuzheng', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('421', '2022-08-26 12:06:23', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('422', '2022-08-26 05:39:50', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('423', '2022-08-26 06:10:39', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('424', '2022-08-26 06:12:16', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('425', '2022-08-26 06:14:50', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('426', '2022-08-26 06:19:33', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('427', '2022-08-26 06:26:08', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('428', '2022-08-26 06:27:33', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('429', '2022-08-26 06:30:11', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('430', '2022-08-26 06:31:05', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('431', '2022-08-26 06:33:43', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('432', '2022-08-26 06:35:53', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('433', '2022-08-26 06:39:23', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('434', '2022-08-26 06:40:41', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('435', '2022-08-26 06:42:05', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('436', '2022-08-26 07:08:43', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('437', '2022-08-26 07:41:54', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('438', '2022-08-26 07:52:43', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('439', '2022-08-26 07:56:46', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('440', '2022-08-26 08:14:12', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('441', '2022-08-26 08:16:46', null, '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '104.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('442', '2022-09-05 06:37:23', '2022-09-05 06:37:27', '192.168.137.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '105.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('443', '2022-09-17 06:02:48', null, '192.168.189.1', '山西', 'PC端', '537.36 (KHTML, like Gecko) Chrome', ' Win64', '105.0.0.0 Safari', 'admin', 'LAPTOP-NG0RFMOT');
INSERT INTO `uservisit_inf` VALUES ('444', '2023-03-18 09:08:46', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('445', '2023-03-18 09:11:53', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('446', '2023-03-18 09:17:49', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('447', '2023-03-18 09:20:44', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('448', '2023-03-18 10:15:16', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('449', '2023-03-18 10:59:46', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('450', '2023-03-18 11:04:12', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('451', '2023-03-18 11:07:10', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('452', '2023-03-18 11:09:37', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('453', '2023-03-18 11:11:15', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('454', '2023-03-18 11:13:36', null, '10.128.37.115', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('455', '2023-03-18 01:03:54', null, '10.138.121.20', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('456', '2023-03-20 04:05:53', null, '10.128.92.7', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('457', '2023-03-20 04:39:00', null, '10.128.92.7', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('458', '2023-03-20 05:04:29', null, '10.128.92.7', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('459', '2023-03-20 07:25:10', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('460', '2023-03-20 07:44:16', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('461', '2023-03-20 07:50:03', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('462', '2023-03-20 07:53:34', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('463', '2023-03-20 07:55:45', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('464', '2023-03-20 07:59:32', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('465', '2023-03-21 10:13:50', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('466', '2023-03-21 12:30:51', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('467', '2023-03-21 12:35:52', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('468', '2023-03-21 12:45:25', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('469', '2023-03-21 01:12:36', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('470', '2023-03-21 01:24:44', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('471', '2023-03-22 09:19:29', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('472', '2023-03-22 09:56:09', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('473', '2023-03-22 10:01:41', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('474', '2023-03-22 10:05:31', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('475', '2023-03-22 10:09:27', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('476', '2023-03-22 10:15:03', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('477', '2023-03-22 10:21:45', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('478', '2023-03-22 10:45:58', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('479', '2023-03-22 10:53:01', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('480', '2023-03-22 04:25:18', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('481', '2023-03-22 04:49:53', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('482', '2023-03-22 04:52:57', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('483', '2023-03-22 04:56:28', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('484', '2023-03-22 05:23:31', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('485', '2023-03-22 05:26:49', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('486', '2023-03-22 05:34:58', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('487', '2023-03-22 05:43:36', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('488', '2023-03-22 05:50:08', null, '10.138.205.172', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('489', '2023-03-24 01:54:46', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('490', '2023-03-24 03:52:14', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('491', '2023-03-24 04:31:32', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('492', '2023-03-24 04:33:31', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('493', '2023-03-24 04:48:39', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('494', '2023-03-24 05:00:33', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('495', '2023-03-24 05:02:05', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('496', '2023-03-24 05:04:34', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('497', '2023-03-24 05:08:13', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('498', '2023-03-24 05:13:18', null, '10.138.42.67', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('499', '2023-03-25 10:45:33', null, '10.128.236.178', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('500', '2023-03-25 11:03:23', null, '10.128.236.178', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('501', '2023-03-25 11:14:58', null, '10.128.236.178', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('502', '2023-03-25 11:16:25', null, '10.128.236.178', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('503', '2023-03-25 11:20:02', null, '10.128.236.178', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('504', '2023-03-26 12:58:40', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('505', '2023-03-26 01:05:09', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('506', '2023-03-26 01:09:06', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('507', '2023-03-26 01:17:06', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('508', '2023-03-26 01:26:48', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('509', '2023-03-26 02:03:36', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('510', '2023-03-26 02:06:37', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('511', '2023-03-26 02:14:45', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('512', '2023-03-26 02:18:35', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('513', '2023-03-26 02:43:00', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('514', '2023-03-26 02:48:33', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('515', '2023-03-26 02:55:09', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('516', '2023-03-26 04:57:47', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('517', '2023-03-26 05:11:28', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('518', '2023-03-26 05:34:56', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('519', '2023-03-26 05:52:58', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('520', '2023-03-26 06:04:46', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('521', '2023-03-26 06:06:37', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('522', '2023-03-26 06:09:06', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('523', '2023-03-26 06:36:54', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('524', '2023-03-26 06:41:52', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('525', '2023-03-26 06:50:25', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('526', '2023-03-26 06:52:53', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('527', '2023-03-26 06:57:39', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('528', '2023-03-26 08:20:20', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('529', '2023-03-26 08:24:49', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('530', '2023-03-26 08:29:51', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('531', '2023-03-26 08:37:18', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('532', '2023-03-26 08:40:15', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('533', '2023-03-26 08:45:42', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('534', '2023-03-27 11:19:45', null, '10.138.77.99', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('535', '2023-03-27 05:10:43', null, '10.128.42.70', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('536', '2023-03-27 06:24:13', null, '10.132.161.165', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('537', '2023-03-27 06:31:51', null, '10.132.161.165', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('538', '2023-03-27 06:58:33', null, '10.132.161.165', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('539', '2023-03-27 07:09:24', null, '10.132.161.165', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('540', '2023-03-27 07:29:40', null, '10.132.161.165', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('541', '2023-03-27 07:31:32', null, '10.132.161.165', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('542', '2023-03-27 08:16:32', null, '10.132.161.165', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('543', '2023-03-27 08:19:44', null, '10.132.161.165', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('544', '2023-03-28 11:31:31', null, '10.138.112.190', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('545', '2023-03-28 11:47:30', null, '10.138.112.190', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('546', '2023-03-28 11:54:44', null, '10.138.112.190', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('547', '2023-03-28 11:56:04', null, '10.138.112.190', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('548', '2023-03-29 11:55:05', null, '10.138.112.190', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('549', '2023-03-29 12:38:56', null, '10.138.112.190', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('550', '2023-03-29 05:18:59', null, '10.128.114.91', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('551', '2023-03-29 06:58:50', null, '10.128.114.91', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('552', '2023-03-29 07:13:13', null, '10.128.114.91', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('553', '2023-03-29 07:28:25', null, '10.128.114.91', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('554', '2023-03-29 08:34:04', null, '10.128.114.91', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('555', '2023-04-04 06:10:18', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('556', '2023-04-04 06:19:19', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('557', '2023-04-04 06:21:50', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('558', '2023-04-04 06:28:25', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('559', '2023-04-04 06:57:55', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('560', '2023-04-04 07:01:27', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('561', '2023-04-04 07:10:00', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('562', '2023-04-04 07:21:52', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('563', '2023-04-04 07:27:43', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('564', '2023-04-04 07:30:56', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('565', '2023-04-04 07:34:11', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('566', '2023-04-04 07:35:13', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('567', '2023-04-04 07:40:59', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('568', '2023-04-04 07:44:25', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('569', '2023-04-04 07:49:23', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('570', '2023-04-04 07:54:21', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('571', '2023-04-04 08:01:05', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('572', '2023-04-09 10:38:05', null, '10.138.237.125', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('573', '2023-04-10 08:35:05', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('574', '2023-04-10 09:31:01', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('575', '2023-04-10 09:32:58', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('576', '2023-04-10 09:35:58', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('577', '2023-04-10 09:40:51', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('578', '2023-04-10 10:17:00', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('579', '2023-04-10 10:56:12', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('580', '2023-04-10 11:35:26', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('581', '2023-04-10 11:37:42', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('582', '2023-04-10 11:45:15', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('583', '2023-04-10 11:49:14', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('584', '2023-04-11 12:02:13', null, '10.138.104.204', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('585', '2023-04-12 08:10:32', null, '10.128.222.155', '山西', 'PC端', null, null, null, 'xuzheng', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('586', '2023-04-12 08:10:55', null, '10.128.222.155', '山西', 'PC端', null, null, null, 'xuzheng', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('587', '2023-04-15 08:47:19', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('588', '2023-04-15 08:47:27', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'xuzheng', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('589', '2023-04-15 08:55:06', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('590', '2023-04-15 08:55:13', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'xuzheng', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('591', '2023-04-15 08:57:03', '2023-04-15 09-00-19', '10.128.42.193', '山西', 'PC端', null, null, null, 'xuzheng', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('592', '2023-04-15 09:00:29', '2023-04-15 09-03-26', '10.128.42.193', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('593', '2023-04-15 09:07:27', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('594', '2023-04-15 09:17:33', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('595', '2023-04-15 09:21:25', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('596', '2023-04-15 09:24:41', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('597', '2023-04-15 09:27:08', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('598', '2023-04-15 09:28:57', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('599', '2023-04-15 09:32:54', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('600', '2023-04-15 09:33:13', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('601', '2023-04-15 10:17:02', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('602', '2023-04-15 10:23:04', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('603', '2023-04-15 10:32:27', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('604', '2023-04-15 10:34:14', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('605', '2023-04-15 10:36:17', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('606', '2023-04-15 10:38:29', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('607', '2023-04-15 10:40:42', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('608', '2023-04-15 10:58:00', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('609', '2023-04-15 11:02:50', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('610', '2023-04-15 11:07:02', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('611', '2023-04-15 11:08:03', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('612', '2023-04-15 11:15:33', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('613', '2023-04-15 11:23:25', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('614', '2023-04-15 11:27:39', null, '10.128.42.193', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('615', '2023-04-17 02:23:07', null, '10.128.102.162', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('616', '2023-04-17 02:41:01', null, '10.128.102.162', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('617', '2023-04-18 11:28:03', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('618', '2023-04-18 11:37:58', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('619', '2023-04-18 05:02:27', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('620', '2023-04-18 05:04:05', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('621', '2023-04-18 05:12:56', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('622', '2023-04-18 05:14:42', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('623', '2023-04-18 05:26:14', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('624', '2023-04-18 05:31:07', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('625', '2023-04-18 05:33:29', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('626', '2023-04-18 05:47:54', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('627', '2023-04-18 05:50:00', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('628', '2023-04-18 05:57:09', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('629', '2023-04-18 06:01:07', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('630', '2023-04-18 06:19:24', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('631', '2023-04-18 07:44:37', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('632', '2023-04-18 07:46:06', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('633', '2023-04-18 07:48:09', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('634', '2023-04-18 07:49:03', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('635', '2023-04-18 07:51:18', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('636', '2023-04-18 07:56:03', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('637', '2023-04-18 09:56:31', '2023-04-18 09-57-18', '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('638', '2023-04-18 09:57:27', '2023-04-18 09-58-23', '10.138.245.201', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('639', '2023-04-22 06:31:17', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('640', '2023-04-22 06:31:17', null, '10.138.245.201', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('641', '2023-05-09 01:18:51', null, '10.138.6.134', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('642', '2023-05-16 09:12:47', null, '10.138.156.163', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('643', '2023-07-02 04:36:41', '2023-07-02 04-38-04', '10.128.136.40', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('644', '2023-07-02 04:40:35', null, '10.128.136.40', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('645', '2023-07-02 04:46:19', null, '10.128.136.40', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('646', '2023-07-02 04:46:58', null, '10.128.136.40', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('647', '2023-07-02 04:47:07', null, '10.128.136.40', '山西', 'PC端', null, null, null, 'admin', 'LAPTOP-JJNDB3JE');
INSERT INTO `uservisit_inf` VALUES ('648', '2023-07-02 05:25:02', null, '10.128.136.40', '山西', 'PC端', null, null, null, 'bupanpan', 'LAPTOP-JJNDB3JE');

-- ----------------------------
-- Table structure for user_inf
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `loginname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status_id` int DEFAULT '2',
  `createdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `emp_id` int DEFAULT NULL,
  `che_id` int DEFAULT NULL,
  `con_id` int DEFAULT NULL,
  `sal_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_inf
-- ----------------------------
INSERT INTO `user_inf` VALUES ('1', 'admin', '3cc2815f4649a6b7eba62e04c79a4e97', '1583729316@qq.com', '1', '2023-07-02 16:46:43', '超级管理员', null, null, null, null);
INSERT INTO `user_inf` VALUES ('2', 'manager', '7304b1d41dbd735711f9e25db40b4f63', '123@qq.com', '1', '2022-08-23 09:13:49', '总经理', null, null, null, null);
INSERT INTO `user_inf` VALUES ('3', 'dsds', '7ac6e9b93d3e3ecc13968f6cc53a9093', '371308601@qq.com', '1', '2022-08-23 09:13:43', '测试1', null, '1', '1', '1');
INSERT INTO `user_inf` VALUES ('5', 'ahualy', '0246876c1c966a36923ceb77c1d82e3a', '123@qq.com', '1', '2022-08-23 09:13:46', '测试', '5', '5', '5', '5');
INSERT INTO `user_inf` VALUES ('6', 'Leetcode', '28621d88e9551ce4086aa466239ecb16', '371308601@qq.com', '1', '2023-04-18 17:21:05', '铭星', '8', '8', '8', '87');
INSERT INTO `user_inf` VALUES ('23', 'bupanpan', 'f1d36602ec3947925dfe523f04cd7176', '2456865120@qq.com', '1', '2023-04-18 17:29:13', '卜盼盼', '1', '23', '11', '8');
INSERT INTO `user_inf` VALUES ('31', 'ABCDEF', 'bce3adb5d43cec73bb97f55940303f7a', '123@qq.com', '1', '2021-10-20 09:51:35', '哈哈', '7', '8', '3', '4');
INSERT INTO `user_inf` VALUES ('32', 'laowang', '0714b9a1d12e5b3f35bc596e2cdc0631', '2456865120@qq.com', '2', '2023-05-07 10:33:43', '老王', null, null, null, null);
INSERT INTO `user_inf` VALUES ('35', 'zhangfei', '806455e8567eb955d6a9b4e3c0806961', '1583729316@qq.com', '1', '2022-08-25 23:43:42', '张飞', '22', null, null, null);
