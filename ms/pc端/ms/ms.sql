#设置客户端连接使用的编码
SET NAMES UTF8;
#丢弃数据库ms，如果存在
DROP DATABASE IF EXISIS ms; 
#创建数据库，存储的编码
CREATE DATABASE ms CHARSET=UTF8;
#进入该数据库
USE ms;
#创建数据表 ms_login
CREATE TABLE ms_login(
  id INT PRIMARY KEY ATUO_INCREMENT,
  uname VARCHAR(25) NOT NULL DEFAULT '',
  upwd VARCHAR(32) NOT NULL DEFAULT ''
);
CREATE TABLE ms_
#插入数据 ms_login
INSERT INTO ms_login  VALUES
(NULL,'张三'，md5("123456")),
(NULL,'李四'，md5("123456")),
(NULL,'王五'，md5("123456"));