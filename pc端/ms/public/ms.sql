#设置客户端连接使用的编码
SET NAMES UTF8;
#丢弃数据库ms，如果存在
DROP DATABASE IF EXISTS ms; 
#创建数据库，存储的编码
CREATE DATABASE ms CHARSET=UTF8;
#进入该数据库
USE ms;
#创建数据表 ms_login
CREATE TABLE ms_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(25) NOT NULL ,
  upwd VARCHAR(32) NOT NULL 
);

#插入数据 ms_login
INSERT INTO ms_login  VALUES
(NULL,'张三',md5("123456")),
(NULL,'李四',md5("123456")),
(NULL,'王五',md5("123456"));


#创建数据表 图片 pic_header
CREATE TABLE ms_pic_header(
  hid INT PRIMARY KEY AUTO_INCREMENT,
  tle VARCHAR(50),
  md  VARCHAR(128) #中图片路径 
);
#插入图片数据 
INSERT INTO ms_pic_header VALUES
(null,"图标","http://127.0.0.1:8000/img/header/logo.png"),
(null,"QQ","http://127.0.0.1:8000/img/header/qq.png"),
(null,"微博","http://127.0.0.1:8000/img/header/wb.png"),
(null,"达人","http://127.0.0.1:8000/img/header/n-nav.png"),
(null,"龙虾","http://127.0.0.1:8000/img/header/n-bg1.png"),
(null,"菜","http://127.0.0.1:8000/img/header/n-bg2.png");

#创建数据表 图片 pic_footer
CREATE TABLE ms_pic_footer(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  md  VARCHAR(128) #中图片路径 
);
#插入图片数据 
INSERT INTO ms_pic_footer VALUES
(null,"http://127.0.0.1:8000/img/footer/footer_log.png"),
(null,"http://127.0.0.1:8000/img/footer/footerlinks.png"),
(null,"http://127.0.0.1:8000/img/footer/footer_beian.png");

#创建数据表  ms_index_item
CREATE TABLE ms_index_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  headtitle VARCHAR(30),
  headline VARCHAR(40)
);
INSERT INTO ms_index_item VALUES
(NULL,"早餐","清晨,让厨房的飘香唤TA起床"),
(NULL,"午餐","中午多吃肉,补充蛋白质"),
(NULL,"下午茶","午后,尽享甜蜜“食”光"),
(NULL,"晚餐","晚饭吃得好,要有肉有菜"),
(NULL,"夜宵","深夜食堂开张啦！");

#创建数据表  ms_index_item1
CREATE TABLE ms_index_item1(
  item1id INT PRIMARY KEY AUTO_INCREMENT,
  iid  INT, #早餐id
  title VARCHAR(30),
  efficacy VARCHAR(40)  #功效
);
#建立外键关系
alter table ms_index_item1 add constraint eat2
foreign key(iid) references ms_index_item(iid);

-- SELECT a.headtitle,b.title FROM ms_index_item a
-- INNER JOIN ms_index_item1 b
-- ON a.iid=b.iid
-- where iid=1

INSERT INTO ms_index_item1 VALUES
(NULL,1,"家常烧麦","皮薄馅足,软糯可口"),
(NULL,1,"泡椒什锦萝卜","酸甜脆爽,搭配白粥极佳"),
(NULL,1,"家常烙饼","香酥柔软,好吃过瘾"),
(NULL,2,"蜜汁烤鸡腿","香香的烤鸡腿来啦！"),
(NULL,2,"贝贝南瓜蒸排骨","排骨新做法,快来试试吧"),
(NULL,2,"牛肉炖土豆","补中益气,滋补暖胃"),
(NULL,3,"杯壁慕斯","颜控专属,美味营养"),
(NULL,3,"咖啡奶冻","香浓醇厚,细滑可口"),
(NULL,3,"椰浆红豆芋圆水果捞","口感滑嫩,营养丰富"),
(NULL,4,"酸辣烤鱼","学会它,在家也能吃烤鱼啦"),
(NULL,4,"家常回锅肉","肥而不腻,满口留香"),
(NULL,4,"淡菜海带萝卜汤","汤汁鲜美,去火消食"),
(NULL,5,"自制麻辣烫","自制麻辣烫,美味又安全"),
(NULL,5,"酥豆角","豆角新吃法,酥脆又营养"),
(NULL,5,"快速烤红薯","热腾腾的烤红薯来啦！");

#创建数据表 图片 pic
CREATE TABLE ms_pic_zitem(
  zid INT PRIMARY KEY AUTO_INCREMENT,
  md  VARCHAR(128) #中图片路径 
);
#插入图片数据 
INSERT INTO ms_pic_zitem VALUES
(null,"http://127.0.0.1:8000/img/section/z-item/z-item1-a.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item1-b.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item1-c.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item2-a.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item2-b.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item2-c.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item3-a.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item3-b.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item3-c.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item4-a.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item4-b.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item4-c.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item5-a.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item5-b.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/z-item5-c.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/slide_bg.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/time.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/timex.jpg"),
(null,"http://127.0.0.1:8000/img/section/z-item/white80.png");

#创建数据表 图片 pic
CREATE TABLE ms_pic_food(
  fdid INT PRIMARY KEY AUTO_INCREMENT,
  md  VARCHAR(128) #中图片路径 
);
#插入图片数据 
INSERT INTO ms_pic_food VALUES
(null,"http://127.0.0.1:8000/img/section/food/food_a1.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_a2.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_a3.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_a4.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_a5.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_a6.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_a7.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_a8.jpg"),

(null,"http://127.0.0.1:8000/img/section/food/food_b1.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_b2.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_b3.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_b4.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_b5.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_b6.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_b7.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_b8.jpg"),

(null,"http://127.0.0.1:8000/img/section/food/food_c1.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_c2.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_c3.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_c4.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_c5.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_c6.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_c7.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_c8.jpg"),

(null,"http://127.0.0.1:8000/img/section/food/food_d1.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_d2.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_d3.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_d4.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_d5.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_d6.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_d7.jpg"),
(null,"http://127.0.0.1:8000/img/section/food/food_d8.jpg");

#创建数据表 图片 pic
CREATE TABLE ms_pic_totop(
 tpid INT PRIMARY KEY AUTO_INCREMENT,
  md  VARCHAR(128) #中图片路径 
);
#插入图片数据 
INSERT INTO ms_pic_totop VALUES
(null,"http://127.0.0.1:8000/img/section/to_top/backtotop_icon.png"),
(null,"http://127.0.0.1:8000/img/section/to_top/search_btn.png");

#创建数据表 图片 pic
CREATE TABLE ms_pic_health(
 hlid INT PRIMARY KEY AUTO_INCREMENT,
  md  VARCHAR(128) #中图片路径 
);
#插入图片数据 
INSERT INTO ms_pic_health VALUES
(null,"http://127.0.0.1:8000/img/section/health/h_a1.jpg"),
(null,"http://127.0.0.1:8000/img/section/health/h_a2.jpg"),
(null,"http://127.0.0.1:8000/img/section/health/h_a3.jpg"),

(null,"http://127.0.0.1:8000/img/section/health/h_b1.jpg"),
(null,"http://127.0.0.1:8000/img/section/health/h_b2.jpg"),
(null,"http://127.0.0.1:8000/img/section/health/h_b3.jpg"),

(null,"http://127.0.0.1:8000/img/section/health/h_c1.jpg"),
(null,"http://127.0.0.1:8000/img/section/health/h_c2.jpg"),
(null,"http://127.0.0.1:8000/img/section/health/h_c3.jpg"),

(null,"http://127.0.0.1:8000/img/section/health/h_d1.jpg"),
(null,"http://127.0.0.1:8000/img/section/health/h_d2.jpg"),
(null,"http://127.0.0.1:8000/img/section/health/h_d3.jpg");

#创建数据表 图片 pic
CREATE TABLE ms_pic_round(
 roundid INT PRIMARY KEY AUTO_INCREMENT,
  md  VARCHAR(128)  #中图片路径 
);
#插入图片数据 
INSERT INTO ms_pic_round VALUES
(null,"http://127.0.0.1:8000/img/section/round/blank.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/gxarrow.png"),
(null,"http://127.0.0.1:8000/img/section/round/list_style1_icons.png"),
(null,"http://127.0.0.1:8000/img/section/round/round_rrow.gif"),

(null,"http://127.0.0.1:8000/img/section/round/round_a1.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_a2.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_a3.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_a4.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_a5.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_a6.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_a7.jpg"),

(null,"http://127.0.0.1:8000/img/section/round/round_b1.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_b2.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_b3.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_b4.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_b5.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_b6.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_b7.jpg"),

(null,"http://127.0.0.1:8000/img/section/round/round_c1.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_c2.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_c3.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_c4.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_c5.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_c6.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_c7.jpg"),

(null,"http://127.0.0.1:8000/img/section/round/round_d1.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_d2.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_d3.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_d4.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_d5.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_d6.jpg"),
(null,"http://127.0.0.1:8000/img/section/round/round_d7.jpg");
