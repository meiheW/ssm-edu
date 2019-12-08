-- ----------------------------
-- 创建部门表
-- ----------------------------
DROP TABLE IF EXISTS edu_user;
DROP TABLE IF EXISTS edu_salary_detail;
DROP TABLE IF EXISTS edu_employee;
DROP TABLE IF EXISTS edu_department;
CREATE TABLE edu_department(
	id varchar(32) NOT NULL PRIMARY KEY comment '部门ID',
  name varchar(32) DEFAULT NULL comment '部门名字',
  depno varchar(32) DEFAULT NULL comment '部门编号',
  createtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '记录更新时间',
  build_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP comment '部门成立时间',
  pid varchar(32) DEFAULT NULL comment '上级部门ID'
);

-- ----------------------------
-- 创建员工表
-- ----------------------------
CREATE TABLE edu_employee (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '员工ID',
  chinese_name varchar(32) DEFAULT NULL COMMENT '中文名',
  english_name varchar(32) DEFAULT NULL COMMENT '英文名',
  joined_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '入职日期',
  salary decimal(18,2) DEFAULT '0.00' COMMENT '工资',
  position_level int DEFAULT '1' COMMENT '职位级别',
  department_id varchar(32) DEFAULT NULL COMMENT '所属部门',
  deltag char(1) DEFAULT NULL COMMENT '离职标签 0:未离职 1:离职',
  leave_date timestamp COMMENT '离职日期',
  KEY FK_emp_department (department_id),
  CONSTRAINT FK_emp_department FOREIGN KEY (department_id) REFERENCES edu_department (id)
);


-- ----------------------------
-- 创建用户表
-- ----------------------------
CREATE TABLE edu_user (
  id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password varchar(255) NOT NULL,
  emp_id int DEFAULT NULL,
  KEY FK_user_emp(emp_id),
  CONSTRAINT FK_user_emp FOREIGN KEY (emp_id) REFERENCES edu_employee (id)
);



-- ----------------------------
-- 创建员工工资明细
-- ----------------------------
CREATE TABLE edu_salary_detail (
  id varchar(32) NOT NULL PRIMARY KEY COMMENT '工资id',
  total_salary decimal(10,0) DEFAULT NULL COMMENT '总工资',
  social_salary decimal(10,0) DEFAULT NULL COMMENT '社保',
  house_salary decimal(10,0) DEFAULT NULL COMMENT '公积金',
  tax decimal(10,0) DEFAULT NULL COMMENT '税',
  basic_salary decimal(10,0) DEFAULT NULL COMMENT '基本工资',
  reward_money decimal(10,0) DEFAULT NULL COMMENT '奖金',
  punish_money decimal(10,0) DEFAULT NULL COMMENT '罚金',
  help_money decimal(10,0) DEFAULT NULL COMMENT '补贴',
  actual_money decimal(10,0) DEFAULT NULL COMMENT '实发工资',
  emp_id int NOT NULL COMMENT '员工ID',
  salary_date timestamp NOT NULL COMMENT '发工资日期',
  KEY FK_salary_emp (emp_id),
  CONSTRAINT FK_salary_emp FOREIGN KEY (emp_id) REFERENCES edu_employee (id)
);


