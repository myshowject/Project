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

-- #创建数据表  ms_index_item
-- CREATE TABLE ms_index_item(
--   iid INT PRIMARY KEY AUTO_INCREMENT,
--   headtitle VARCHAR(30),
--   headline VARCHAR(40)
-- );
-- INSERT INTO ms_index_item VALUES
-- (NULL,"早餐","清晨,让厨房的飘香唤TA起床"),
-- (NULL,"午餐","中午多吃肉,补充蛋白质"),
-- (NULL,"下午茶","午后,尽享甜蜜“食”光"),
-- (NULL,"晚餐","晚饭吃得好,要有肉有菜"),
-- (NULL,"夜宵","深夜食堂开张啦！");

-- #创建数据表  ms_index_item1
-- CREATE TABLE ms_index_item1(
--   item1id INT PRIMARY KEY AUTO_INCREMENT,
--   iid  INT, #早餐id
--   title VARCHAR(30),
--   efficacy VARCHAR(40),  #推荐
--   benefits VARCHAR(10) #功效
-- );
-- #建立外键关系
-- alter table ms_index_item1 add constraint eat2
-- foreign key(iid) references ms_index_item(iid);

-- -- SELECT a.headtitle,b.title FROM ms_index_item a
-- -- INNER JOIN ms_index_item1 b
-- -- ON a.iid=b.iid
-- -- where iid=1

-- INSERT INTO ms_index_item1 VALUES
-- (NULL,1,"家常烧麦","皮薄馅足,软糯可口","增强体质"),
-- (NULL,1,"泡椒什锦萝卜","酸甜脆爽,搭配白粥极佳","强身健体"),
-- (NULL,1,"家常烙饼","香酥柔软,好吃过瘾","补充能量"),
-- (NULL,2,"蜜汁烤鸡腿","香香的烤鸡腿来啦！","补充能量"),
-- (NULL,2,"贝贝南瓜蒸排骨","排骨新做法,快来试试吧","补肾"),
-- (NULL,2,"牛肉炖土豆","补中益气,滋补暖胃","强身健体"),
-- (NULL,3,"杯壁慕斯","颜控专属,美味营养","强身健体"),
-- (NULL,3,"咖啡奶冻","香浓醇厚,细滑可口","美容养颜"),
-- (NULL,3,"椰浆红豆芋圆水果捞","口感滑嫩,营养丰富","补充能量"),
-- (NULL,4,"酸辣烤鱼","学会它,在家也能吃烤鱼啦","补充蛋白"),
-- (NULL,4,"家常回锅肉","肥而不腻,满口留香","强身健体"),
-- (NULL,4,"淡菜海带萝卜汤","汤汁鲜美,去火消食","保护肠胃"),
-- (NULL,5,"自制麻辣烫","自制麻辣烫,美味又安全","益智安神"),
-- (NULL,5,"酥豆角","豆角新吃法,酥脆又营养","补充维生素"),
-- (NULL,5,"快速烤红薯","热腾腾的烤红薯来啦！","富含膳食纤维");

-- #创建数据表 图片 pic
-- CREATE TABLE ms_pic_zitem(
--   zid INT PRIMARY KEY AUTO_INCREMENT,
--   item1id INT,
--   md  VARCHAR(128) #中图片路径 
-- );

-- #建立外键关系
-- alter table ms_pic_zitem add constraint eat1
-- foreign key(item1id) references ms_index_item1(item1id);

-- #插入图片数据 
-- INSERT INTO ms_pic_zitem VALUES
-- (null,1,"http://127.0.0.1:8000/img/section/z-item/z-item1-a.jpg"),
-- (null,2,"http://127.0.0.1:8000/img/section/z-item/z-item1-b.jpg"),
-- (null,3,"http://127.0.0.1:8000/img/section/z-item/z-item1-c.jpg"),
-- (null,4,"http://127.0.0.1:8000/img/section/z-item/z-item2-a.jpg"),
-- (null,5,"http://127.0.0.1:8000/img/section/z-item/z-item2-b.jpg"),
-- (null,6,"http://127.0.0.1:8000/img/section/z-item/z-item2-c.jpg"),
-- (null,7,"http://127.0.0.1:8000/img/section/z-item/z-item3-a.jpg"),
-- (null,8,"http://127.0.0.1:8000/img/section/z-item/z-item3-b.jpg"),
-- (null,9,"http://127.0.0.1:8000/img/section/z-item/z-item3-c.jpg"),
-- (null,10,"http://127.0.0.1:8000/img/section/z-item/z-item4-a.jpg"),
-- (null,11,"http://127.0.0.1:8000/img/section/z-item/z-item4-b.jpg"),
-- (null,12,"http://127.0.0.1:8000/img/section/z-item/z-item4-c.jpg"),
-- (null,13,"http://127.0.0.1:8000/img/section/z-item/z-item5-a.jpg"),
-- (null,14,"http://127.0.0.1:8000/img/section/z-item/z-item5-b.jpg"),
-- (null,15,"http://127.0.0.1:8000/img/section/z-item/z-item5-c.jpg");


-- #创建数据表 food
-- CREATE TABLE ms_food(
--   fdid INT PRIMARY KEY AUTO_INCREMENT,
--   food_title  VARCHAR(10)
-- );
-- INSERT INTO ms_food VALUES
-- (null,"水果"),
-- (null,"蔬菜"),
-- (null,"五谷"),
-- (null,"生鲜");

-- alter table ms_pic_food add constraint food1
-- foreign key(fdid) references ms_food(fdid);

-- #创建数据表 图片 pic
-- CREATE TABLE ms_pic_food(
--   food_pic_id INT PRIMARY KEY AUTO_INCREMENT,
--   fdid INT,
--   pic_title VARCHAR(10),
--   md  VARCHAR(128) #中图片路径 
-- );
-- #插入图片数据 
-- INSERT INTO ms_pic_food VALUES
-- (null,1,"梨","http://127.0.0.1:8000/img/section/food/food_a1.jpg"),
-- (null,1,"山楂","http://127.0.0.1:8000/img/section/food/food_a2.jpg"),
-- (null,1,"橙","http://127.0.0.1:8000/img/section/food/food_a3.jpg"),
-- (null,1,"苹果","http://127.0.0.1:8000/img/section/food/food_a4.jpg"),
-- (null,1,"猕猴桃","http://127.0.0.1:8000/img/section/food/food_a5.jpg"),
-- (null,1,"甘蔗","http://127.0.0.1:8000/img/section/food/food_a6.jpg"),
-- (null,1,"香蕉","http://127.0.0.1:8000/img/section/food/food_a7.jpg"),
-- (null,1,"柚子","http://127.0.0.1:8000/img/section/food/food_a8.jpg"),

-- (null,2,"冬笋","http://127.0.0.1:8000/img/section/food/food_b1.jpg"),
-- (null,2,"芹菜","http://127.0.0.1:8000/img/section/food/food_b2.jpg"),
-- (null,2,"胡萝卜","http://127.0.0.1:8000/img/section/food/food_b3.jpg"),
-- (null,2,"大白菜","http://127.0.0.1:8000/img/section/food/food_b4.jpg"),
-- (null,2,"莴笋","http://127.0.0.1:8000/img/section/food/food_b5.jpg"),
-- (null,2,"菜花","http://127.0.0.1:8000/img/section/food/food_b6.jpg"),
-- (null,2,"油麦菜","http://127.0.0.1:8000/img/section/food/food_b7.jpg"),
-- (null,2,"平菇","http://127.0.0.1:8000/img/section/food/food_b8.jpg"),

-- (null,3,"板栗","http://127.0.0.1:8000/img/section/food/food_c1.jpg"),
-- (null,3,"黑豆","http://127.0.0.1:8000/img/section/food/food_c2.jpg"),
-- (null,3,"核桃","http://127.0.0.1:8000/img/section/food/food_c3.jpg"),
-- (null,3,"小米","http://127.0.0.1:8000/img/section/food/food_c4.jpg"),
-- (null,3,"燕麦","http://127.0.0.1:8000/img/section/food/food_c5.jpg"),
-- (null,3,"糯米","http://127.0.0.1:8000/img/section/food/food_c6.jpg"),
-- (null,3,"桂圆(干)","http://127.0.0.1:8000/img/section/food/food_c7.jpg"),
-- (null,3,"玉米面(黄)","http://127.0.0.1:8000/img/section/food/food_c8.jpg"),

-- (null,4,"排骨","http://127.0.0.1:8000/img/section/food/food_d1.jpg"),
-- (null,4,"虾","http://127.0.0.1:8000/img/section/food/food_d2.jpg"),
-- (null,4,"羊肉","http://127.0.0.1:8000/img/section/food/food_d3.jpg"),
-- (null,4,"带鱼","http://127.0.0.1:8000/img/section/food/food_d4.jpg"),
-- (null,4,"牛肉","http://127.0.0.1:8000/img/section/food/food_d5.jpg"),
-- (null,4,"鱿鱼","http://127.0.0.1:8000/img/section/food/food_d6.jpg"),
-- (null,4,"乌骨鸡","http://127.0.0.1:8000/img/section/food/food_d7.jpg"),
-- (null,4,"腊肉","http://127.0.0.1:8000/img/section/food/food_d8.jpg");


-- #round查询语句
-- SELECT * FROM ms_round r  INNER JOIN ms_pic_round p  INNER JOIN ms_round_name n  INNER JOIN ms_round_comments c  ON r.rdid=p.rdid  AND p.picid =n.picid AND n.rnid =c.rnid;

-- #创建数据表 ms_round
-- CREATE TABLE ms_round(
--  rdid INT PRIMARY KEY AUTO_INCREMENT,
--  roundtitle VARCHAR(20) 
-- );
-- #插入数据
-- INSERT INTO ms_round VALUES
-- (null,"最新菜谱"),
-- (null,"每小时最新菜谱"),
-- (null,"今日最受欢迎菜谱"),
-- (null,"一周热门菜谱推荐");

-- alter table ms_pic_round add constraint round1
-- foreign key(rdid) references ms_round(rdid);

-- alter table ms_round_name add constraint round2
-- foreign key(picid) references ms_pic_round(picid);

-- alter table ms_round_comments add constraint round3
-- foreign key(rnid) references ms_round_name(rnid);


-- #创建数据表 ms_round_comments
-- CREATE TABLE ms_round_comments(
--  rcid INT PRIMARY KEY AUTO_INCREMENT,
--  rnid INT COMMENT '每个菜名的id',#每个菜名的id
--  ctime DATETIME COMMENT '评论时间',#评论时间
--  point INT(11) COMMENT '点击次数人气', #点击次数人气
--  contents INT(11) COMMENT '评论次数', #评论次数
--  content VARCHAR(255) COMMENT '评论内容' #评论内容
-- );
-- #插入数据
-- INSERT INTO ms_round_comments VALUES
-- (null,1,now(),10,30,"好好好"),
-- (null,2,now(),20,20,"nice"),
-- (null,3,now(),30,13,"可以的"),
-- (null,4,now(),15,15,"赞"),
-- (null,5,now(),25,10,"赞"),
-- (null,6,now(),11,8,"稳"),
-- (null,7,now(),8,5,"可以的");
-- #插入数据
-- INSERT INTO ms_round_comments VALUES
-- (null,8,now(),1,3,"好好好"),
-- (null,9,now(),2,12,"nice"),
-- (null,10,now(),30,13,"可以的"),
-- (null,11,now(),5,10,"赞"),
-- (null,12,now(),5,14,"赞"),
-- (null,13,now(),1,8,"稳"),
-- (null,14,now(),8,10,"可以的");
-- #插入数据
-- INSERT INTO ms_round_comments VALUES
-- (null,15,now(),476,371,"好好好"),
-- (null,16,now(),1052,192,"nice"),
-- (null,17,now(),789,183,"可以的"),
-- (null,18,now(),461,170,"赞"),
-- (null,19,now(),987,154,"赞"),
-- (null,20,now(),78,845,"稳"),
-- (null,21,now(),5465,160,"可以的"),
-- (null,22,now(),564,312,"好好好"),
-- (null,23,now(),4788,1212,"nice"),
-- (null,24,now(),3050,123,"可以的"),
-- (null,25,now(),4656,100,"赞"),
-- (null,26,now(),8888,104,"赞"),
-- (null,27,now(),555,80,"稳"),
-- (null,28,now(),999,100,"可以的");

-- #创建数据表 ms_round_name
-- CREATE TABLE ms_round_name(
--  rnid INT PRIMARY KEY AUTO_INCREMENT COMMENT '菜名id',
--  picid INT COMMENT '每张图片对应id',#每张图片的id
--  rname VARCHAR(20) COMMENT '菜名',
--  author VARCHAR(20) COMMENT '每个菜的作者',
--  steps VARCHAR(20) COMMENT '步骤',
--  practice VARCHAR(20) COMMENT '做法及味道',
--  benefits VARCHAR(10) #功效
-- );
-- -- #添加新字段名
-- -- alter table ms_round_name add benefits  VARCHAR(10) #功效;
-- #插入数据
-- INSERT INTO ms_round_name VALUES
-- (null,1,"茄汁风味牛肉香肠绘通心粉","璐瑶20082008","12步 / 大概30分钟","煮 / 茄汁味",""),
-- (null,2,"蔓越莓手撕面包","念心(来自微信.....)","20步 / 大概数小时","烘焙 / 甜味",""),
-- (null,3,"百搭柠檬酱【初味日记】","初味日记","11步 / 大概60分钟","煮 / 酸甜味",""),
-- (null,4,"核香一口酥","念心(来自微信.....)","27步 / 大概2小时","烘焙 / 咸鲜味",""),
-- (null,5,"牛肉肠蔬菜拌意粉","暮色影子","9步 / 大概10分钟","拌 / 其它口味",""),
-- (null,6,"日式苦荞紫薯面包","Dream芸_","12步 / 大概30分钟","烤 / 甜味",""),
-- (null,7,"竹笋红烧肉","Dream芸_","14步 / 大概30分钟","炒 / 咸鲜味","");

-- #插入数据
-- INSERT INTO ms_round_name VALUES
-- (null,8,"台湾卤肉（快手版）","杜杜明明没肚肚","11步 / 大概60分钟","炖 / 咸鲜味","止疼"),
-- (null,9,"酱油饭","童尐果","8步 / 大概10分钟","炒 / 家常味","高血压"),
-- (null,10,"咸蛋黄虾仁豆腐","开心果子365Q","13步 / 大概5分钟","其它工艺 / 家常味","清热解毒"),
-- (null,11,"酱腌黄瓜","花凝雨嫣","13步 / 大概一天","腌 / 酱香味","防癌"),
-- (null,12,"茄汁豆腐","美乐猪","10步 / 大概5分钟","炸 / 酸甜味","抵抗力"),
-- (null,13,"椒香五花肉","孩妈@妮妮","24步 / 大概15分钟","煮 / 酸辣味",""),
-- (null,14,"青红椒炒虾仁","美美家的厨房","8步 / 大概15分钟","炒 / 家常味","")
-- ;
-- #插入数据
-- INSERT INTO ms_round_name VALUES
-- (null,15,"香酥反沙馒头条","寓言7656","9步 / 大概10分钟","炸 / 甜味",""),
-- (null,16,"零难度日式鸡丸串烧！","罐头视频","6步 / 大概30分钟","烤 / 香辣味","抵抗力"),
-- (null,17,"酸爽藕片","喵.控","7步 / 大概5分钟","拌 / 酸辣味","防治胃病"),
-- (null,18,"霸王超市｜乱炖之猪肉粉条","妃·英理","14步 / 大概60分钟","炖 / 咸鲜味","抵抗力"),
-- (null,19,"糖醋素排骨","香儿厨房","10步 / 大概10分钟","烧 / 酸甜味","防治胃病"),
-- (null,20,"干锅蒜香鲳鱼","心在乌云上2013","16步 / 大概30分钟","干锅 / 蒜香味","脂肪肝"),
-- (null,21,"丝瓜炖豆腐","穿过海的声音83","5步 / 大概15分钟","炖 / 咸鲜味","美白养颜"),

-- (null,22,"霸王超市| 糖醋五花肉","老方小雨","14步 / 大概30分钟","烧 / 酸甜味",""),
-- (null,23,"凉拌茄子","sourcehe","8步 / 大概10分钟","拌 / 香辣味","防癌"),
-- (null,24,"剁椒鸭血","寓言7656","10步 / 大概10分钟","蒸 / 香辣味",""),
-- (null,25,"糟卤五香毛豆","幸福精灵a","12步 / 大概30分钟","泡 / 咸鲜味","润肠通便"),
-- (null,26,"猪腰莲藕汤","瑗瑗baby","13步 / 大概60分钟","炖 / 咸鲜味","防治胃病"),
-- (null,27,"酱爆羊肉","林妈爱美食","9步 / 大概15分钟","炒 / 香辣味","健胃"),
-- (null,28,"酱爆腰果鸡丁","孩妈@妮妮","15步 / 大概10分钟","炒 / 家常味","保护血管")
-- ;

-- #创建数据表 图片 pic
-- CREATE TABLE ms_pic_round(
--  picid INT PRIMARY KEY AUTO_INCREMENT COMMENT '菜图id',
--  rdid INT COMMENT '总概述id',
--  pic  VARCHAR(128) COMMENT '图片路径' #中图片路径 
-- );
-- #插入图片数据 
-- INSERT INTO ms_pic_round VALUES
-- (null,1,"http://127.0.0.1:8000/img/section/round/round_a1.jpg"),
-- (null,1,"http://127.0.0.1:8000/img/section/round/round_a2.jpg"),
-- (null,1,"http://127.0.0.1:8000/img/section/round/round_a3.jpg"),
-- (null,1,"http://127.0.0.1:8000/img/section/round/round_a4.jpg"),
-- (null,1,"http://127.0.0.1:8000/img/section/round/round_a5.jpg"),
-- (null,1,"http://127.0.0.1:8000/img/section/round/round_a6.jpg"),
-- (null,1,"http://127.0.0.1:8000/img/section/round/round_a7.jpg"),

-- (null,2,"http://127.0.0.1:8000/img/section/round/round_b1.jpg"),
-- (null,2,"http://127.0.0.1:8000/img/section/round/round_b2.jpg"),
-- (null,2,"http://127.0.0.1:8000/img/section/round/round_b3.jpg"),
-- (null,2,"http://127.0.0.1:8000/img/section/round/round_b4.jpg"),
-- (null,2,"http://127.0.0.1:8000/img/section/round/round_b5.jpg"),
-- (null,2,"http://127.0.0.1:8000/img/section/round/round_b6.jpg"),
-- (null,2,"http://127.0.0.1:8000/img/section/round/round_b7.jpg"),

-- (null,3,"http://127.0.0.1:8000/img/section/round/round_c1.jpg"),
-- (null,3,"http://127.0.0.1:8000/img/section/round/round_c2.jpg"),
-- (null,3,"http://127.0.0.1:8000/img/section/round/round_c3.jpg"),
-- (null,3,"http://127.0.0.1:8000/img/section/round/round_c4.jpg"),
-- (null,3,"http://127.0.0.1:8000/img/section/round/round_c5.jpg"),
-- (null,3,"http://127.0.0.1:8000/img/section/round/round_c6.jpg"),
-- (null,3,"http://127.0.0.1:8000/img/section/round/round_c7.jpg"),

-- (null,4,"http://127.0.0.1:8000/img/section/round/round_d1.jpg"),
-- (null,4,"http://127.0.0.1:8000/img/section/round/round_d2.jpg"),
-- (null,4,"http://127.0.0.1:8000/img/section/round/round_d3.jpg"),
-- (null,4,"http://127.0.0.1:8000/img/section/round/round_d4.jpg"),
-- (null,4,"http://127.0.0.1:8000/img/section/round/round_d5.jpg"),
-- (null,4,"http://127.0.0.1:8000/img/section/round/round_d6.jpg"),
-- (null,4,"http://127.0.0.1:8000/img/section/round/round_d7.jpg");


#创建数据表 app_swipe
CREATE TABLE app_swipe(
  swipeid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(255)  
);
#插入数据 app_swipe
INSERT INTO app_swipe  VALUES
(NULL,"http://127.0.0.1:8000/img/app/home/swipe1.jpg"),
(NULL,"http://127.0.0.1:8000/img/app/home/swipe2.jpg"),
(NULL,"http://127.0.0.1:8000/img/app/home/swipe3.jpg");
