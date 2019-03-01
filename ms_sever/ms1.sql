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
  efficacy VARCHAR(40),  #推荐
  benefits VARCHAR(10) #功效
);
#建立外键关系
alter table ms_index_item1 add constraint eat2
foreign key(iid) references ms_index_item(iid);

-- SELECT a.headtitle,b.title FROM ms_index_item a
-- INNER JOIN ms_index_item1 b
-- ON a.iid=b.iid
-- where iid=1

INSERT INTO ms_index_item1 VALUES
(NULL,1,"家常烧麦","皮薄馅足,软糯可口","增强体质"),
(NULL,1,"泡椒什锦萝卜","酸甜脆爽,搭配白粥极佳","强身健体"),
(NULL,1,"家常烙饼","香酥柔软,好吃过瘾","补充能量"),
(NULL,2,"蜜汁烤鸡腿","香香的烤鸡腿来啦！","补充能量"),
(NULL,2,"贝贝南瓜蒸排骨","排骨新做法,快来试试吧","补肾"),
(NULL,2,"牛肉炖土豆","补中益气,滋补暖胃","强身健体"),
(NULL,3,"杯壁慕斯","颜控专属,美味营养","强身健体"),
(NULL,3,"咖啡奶冻","香浓醇厚,细滑可口","美容养颜"),
(NULL,3,"椰浆红豆芋圆水果捞","口感滑嫩,营养丰富","补充能量"),
(NULL,4,"酸辣烤鱼","学会它,在家也能吃烤鱼啦","补充蛋白"),
(NULL,4,"家常回锅肉","肥而不腻,满口留香","强身健体"),
(NULL,4,"淡菜海带萝卜汤","汤汁鲜美,去火消食","保护肠胃"),
(NULL,5,"自制麻辣烫","自制麻辣烫,美味又安全","益智安神"),
(NULL,5,"酥豆角","豆角新吃法,酥脆又营养","补充维生素"),
(NULL,5,"快速烤红薯","热腾腾的烤红薯来啦！","富含膳食纤维");

#创建数据表 图片 pic
CREATE TABLE ms_pic_zitem(
  zid INT PRIMARY KEY AUTO_INCREMENT,
  item1id INT,
  md  VARCHAR(128) #中图片路径 
);

#建立外键关系
alter table ms_pic_zitem add constraint eat1
foreign key(item1id) references ms_index_item1(item1id);

#插入图片数据 
INSERT INTO ms_pic_zitem VALUES
(null,1,"http://127.0.0.1:8000/img/section/z-item/z-item1-a.jpg"),
(null,2,"http://127.0.0.1:8000/img/section/z-item/z-item1-b.jpg"),
(null,3,"http://127.0.0.1:8000/img/section/z-item/z-item1-c.jpg"),
(null,4,"http://127.0.0.1:8000/img/section/z-item/z-item2-a.jpg"),
(null,5,"http://127.0.0.1:8000/img/section/z-item/z-item2-b.jpg"),
(null,6,"http://127.0.0.1:8000/img/section/z-item/z-item2-c.jpg"),
(null,7,"http://127.0.0.1:8000/img/section/z-item/z-item3-a.jpg"),
(null,8,"http://127.0.0.1:8000/img/section/z-item/z-item3-b.jpg"),
(null,9,"http://127.0.0.1:8000/img/section/z-item/z-item3-c.jpg"),
(null,10,"http://127.0.0.1:8000/img/section/z-item/z-item4-a.jpg"),
(null,11,"http://127.0.0.1:8000/img/section/z-item/z-item4-b.jpg"),
(null,12,"http://127.0.0.1:8000/img/section/z-item/z-item4-c.jpg"),
(null,13,"http://127.0.0.1:8000/img/section/z-item/z-item5-a.jpg"),
(null,14,"http://127.0.0.1:8000/img/section/z-item/z-item5-b.jpg"),
(null,15,"http://127.0.0.1:8000/img/section/z-item/z-item5-c.jpg");


#创建数据表 food
CREATE TABLE ms_food(
  fdid INT PRIMARY KEY AUTO_INCREMENT,
  food_title  VARCHAR(10)
);
INSERT INTO ms_food VALUES
(null,"水果"),
(null,"蔬菜"),
(null,"五谷"),
(null,"生鲜");

alter table ms_pic_food add constraint food1
foreign key(fdid) references ms_food(fdid);

#创建数据表 图片 pic
CREATE TABLE ms_pic_food(
  food_pic_id INT PRIMARY KEY AUTO_INCREMENT,
  fdid INT,
  pic_title VARCHAR(10),
  md  VARCHAR(128) #中图片路径 
);
#插入图片数据 
INSERT INTO ms_pic_food VALUES
(null,1,"梨","http://127.0.0.1:8000/img/section/food/food_a1.jpg"),
(null,1,"山楂","http://127.0.0.1:8000/img/section/food/food_a2.jpg"),
(null,1,"橙","http://127.0.0.1:8000/img/section/food/food_a3.jpg"),
(null,1,"苹果","http://127.0.0.1:8000/img/section/food/food_a4.jpg"),
(null,1,"猕猴桃","http://127.0.0.1:8000/img/section/food/food_a5.jpg"),
(null,1,"甘蔗","http://127.0.0.1:8000/img/section/food/food_a6.jpg"),
(null,1,"香蕉","http://127.0.0.1:8000/img/section/food/food_a7.jpg"),
(null,1,"柚子","http://127.0.0.1:8000/img/section/food/food_a8.jpg"),

(null,2,"冬笋","http://127.0.0.1:8000/img/section/food/food_b1.jpg"),
(null,2,"芹菜","http://127.0.0.1:8000/img/section/food/food_b2.jpg"),
(null,2,"胡萝卜","http://127.0.0.1:8000/img/section/food/food_b3.jpg"),
(null,2,"大白菜","http://127.0.0.1:8000/img/section/food/food_b4.jpg"),
(null,2,"莴笋","http://127.0.0.1:8000/img/section/food/food_b5.jpg"),
(null,2,"菜花","http://127.0.0.1:8000/img/section/food/food_b6.jpg"),
(null,2,"油麦菜","http://127.0.0.1:8000/img/section/food/food_b7.jpg"),
(null,2,"平菇","http://127.0.0.1:8000/img/section/food/food_b8.jpg"),

(null,3,"板栗","http://127.0.0.1:8000/img/section/food/food_c1.jpg"),
(null,3,"黑豆","http://127.0.0.1:8000/img/section/food/food_c2.jpg"),
(null,3,"核桃","http://127.0.0.1:8000/img/section/food/food_c3.jpg"),
(null,3,"小米","http://127.0.0.1:8000/img/section/food/food_c4.jpg"),
(null,3,"燕麦","http://127.0.0.1:8000/img/section/food/food_c5.jpg"),
(null,3,"糯米","http://127.0.0.1:8000/img/section/food/food_c6.jpg"),
(null,3,"桂圆(干)","http://127.0.0.1:8000/img/section/food/food_c7.jpg"),
(null,3,"玉米面(黄)","http://127.0.0.1:8000/img/section/food/food_c8.jpg"),

(null,4,"排骨","http://127.0.0.1:8000/img/section/food/food_d1.jpg"),
(null,4,"虾","http://127.0.0.1:8000/img/section/food/food_d2.jpg"),
(null,4,"羊肉","http://127.0.0.1:8000/img/section/food/food_d3.jpg"),
(null,4,"带鱼","http://127.0.0.1:8000/img/section/food/food_d4.jpg"),
(null,4,"牛肉","http://127.0.0.1:8000/img/section/food/food_d5.jpg"),
(null,4,"鱿鱼","http://127.0.0.1:8000/img/section/food/food_d6.jpg"),
(null,4,"乌骨鸡","http://127.0.0.1:8000/img/section/food/food_d7.jpg"),
(null,4,"腊肉","http://127.0.0.1:8000/img/section/food/food_d8.jpg");


#round查询语句
SELECT * FROM ms_round r  INNER JOIN ms_pic_round p  INNER JOIN ms_round_name n  INNER JOIN ms_round_comments c  ON r.rdid=p.rdid  AND p.picid =n.picid AND n.rnid =c.rnid;

#创建数据表 ms_round
CREATE TABLE ms_round(
 rdid INT PRIMARY KEY AUTO_INCREMENT,
 roundtitle VARCHAR(20) 
);
#插入数据
INSERT INTO ms_round VALUES
(null,"最新菜谱"),
(null,"每小时最新菜谱"),
(null,"今日最受欢迎菜谱"),
(null,"一周热门菜谱推荐");

alter table ms_pic_round add constraint round1
foreign key(rdid) references ms_round(rdid);

alter table ms_round_name add constraint round2
foreign key(picid) references ms_pic_round(picid);

alter table ms_round_comments add constraint round3
foreign key(rnid) references ms_round_name(rnid);


#创建数据表 ms_round_comments
CREATE TABLE ms_round_comments(
 rcid INT PRIMARY KEY AUTO_INCREMENT,
 rnid INT COMMENT '每个菜名的id',#每个菜名的id
 ctime DATETIME COMMENT '评论时间',#评论时间
 point INT(11) COMMENT '点击次数人气', #点击次数人气
 contents INT(11) COMMENT '评论次数', #评论次数
 content VARCHAR(255) COMMENT '评论内容' #评论内容
);
#插入数据
INSERT INTO ms_round_comments VALUES
(null,1,now(),10,30,"好好好"),
(null,2,now(),20,20,"nice"),
(null,3,now(),30,13,"可以的"),
(null,4,now(),15,15,"赞"),
(null,5,now(),25,10,"赞"),
(null,6,now(),11,8,"稳"),
(null,7,now(),8,5,"可以的");
#插入数据
INSERT INTO ms_round_comments VALUES
(null,8,now(),1,3,"好好好"),
(null,9,now(),2,12,"nice"),
(null,10,now(),30,13,"可以的"),
(null,11,now(),5,10,"赞"),
(null,12,now(),5,14,"赞"),
(null,13,now(),1,8,"稳"),
(null,14,now(),8,10,"可以的");
#插入数据
INSERT INTO ms_round_comments VALUES
(null,15,now(),476,371,"好好好"),
(null,16,now(),1052,192,"nice"),
(null,17,now(),789,183,"可以的"),
(null,18,now(),461,170,"赞"),
(null,19,now(),987,154,"赞"),
(null,20,now(),78,845,"稳"),
(null,21,now(),5465,160,"可以的"),
(null,22,now(),564,312,"好好好"),
(null,23,now(),4788,1212,"nice"),
(null,24,now(),3050,123,"可以的"),
(null,25,now(),4656,100,"赞"),
(null,26,now(),8888,104,"赞"),
(null,27,now(),555,80,"稳"),
(null,28,now(),999,100,"可以的");

#创建数据表 ms_round_name
CREATE TABLE ms_round_name(
 rnid INT PRIMARY KEY AUTO_INCREMENT COMMENT '菜名id',
 picid INT COMMENT '每张图片对应id',#每张图片的id
 rname VARCHAR(20) COMMENT '菜名',
 author VARCHAR(20) COMMENT '每个菜的作者',
 steps VARCHAR(20) COMMENT '步骤',
 practice VARCHAR(20) COMMENT '做法及味道',
 benefits VARCHAR(10) #功效
);
-- #添加新字段名
-- alter table ms_round_name add benefits  VARCHAR(10) #功效;
#插入数据
INSERT INTO ms_round_name VALUES
(null,1,"茄汁风味牛肉香肠绘通心粉","璐瑶20082008","12步 / 大概30分钟","煮 / 茄汁味",""),
(null,2,"蔓越莓手撕面包","念心(来自微信.....)","20步 / 大概数小时","烘焙 / 甜味",""),
(null,3,"百搭柠檬酱【初味日记】","初味日记","11步 / 大概60分钟","煮 / 酸甜味",""),
(null,4,"核香一口酥","念心(来自微信.....)","27步 / 大概2小时","烘焙 / 咸鲜味",""),
(null,5,"牛肉肠蔬菜拌意粉","暮色影子","9步 / 大概10分钟","拌 / 其它口味",""),
(null,6,"日式苦荞紫薯面包","Dream芸_","12步 / 大概30分钟","烤 / 甜味",""),
(null,7,"竹笋红烧肉","Dream芸_","14步 / 大概30分钟","炒 / 咸鲜味","");

#插入数据
INSERT INTO ms_round_name VALUES
(null,8,"台湾卤肉（快手版）","杜杜明明没肚肚","11步 / 大概60分钟","炖 / 咸鲜味","止疼"),
(null,9,"酱油饭","童尐果","8步 / 大概10分钟","炒 / 家常味","高血压"),
(null,10,"咸蛋黄虾仁豆腐","开心果子365Q","13步 / 大概5分钟","其它工艺 / 家常味","清热解毒"),
(null,11,"酱腌黄瓜","花凝雨嫣","13步 / 大概一天","腌 / 酱香味","防癌"),
(null,12,"茄汁豆腐","美乐猪","10步 / 大概5分钟","炸 / 酸甜味","抵抗力"),
(null,13,"椒香五花肉","孩妈@妮妮","24步 / 大概15分钟","煮 / 酸辣味",""),
(null,14,"青红椒炒虾仁","美美家的厨房","8步 / 大概15分钟","炒 / 家常味","")
;
#插入数据
INSERT INTO ms_round_name VALUES
(null,15,"香酥反沙馒头条","寓言7656","9步 / 大概10分钟","炸 / 甜味",""),
(null,16,"零难度日式鸡丸串烧！","罐头视频","6步 / 大概30分钟","烤 / 香辣味","抵抗力"),
(null,17,"酸爽藕片","喵.控","7步 / 大概5分钟","拌 / 酸辣味","防治胃病"),
(null,18,"霸王超市｜乱炖之猪肉粉条","妃·英理","14步 / 大概60分钟","炖 / 咸鲜味","抵抗力"),
(null,19,"糖醋素排骨","香儿厨房","10步 / 大概10分钟","烧 / 酸甜味","防治胃病"),
(null,20,"干锅蒜香鲳鱼","心在乌云上2013","16步 / 大概30分钟","干锅 / 蒜香味","脂肪肝"),
(null,21,"丝瓜炖豆腐","穿过海的声音83","5步 / 大概15分钟","炖 / 咸鲜味","美白养颜"),

(null,22,"霸王超市| 糖醋五花肉","老方小雨","14步 / 大概30分钟","烧 / 酸甜味",""),
(null,23,"凉拌茄子","sourcehe","8步 / 大概10分钟","拌 / 香辣味","防癌"),
(null,24,"剁椒鸭血","寓言7656","10步 / 大概10分钟","蒸 / 香辣味",""),
(null,25,"糟卤五香毛豆","幸福精灵a","12步 / 大概30分钟","泡 / 咸鲜味","润肠通便"),
(null,26,"猪腰莲藕汤","瑗瑗baby","13步 / 大概60分钟","炖 / 咸鲜味","防治胃病"),
(null,27,"酱爆羊肉","林妈爱美食","9步 / 大概15分钟","炒 / 香辣味","健胃"),
(null,28,"酱爆腰果鸡丁","孩妈@妮妮","15步 / 大概10分钟","炒 / 家常味","保护血管")
;

#创建数据表 图片 pic
CREATE TABLE ms_pic_round(
 picid INT PRIMARY KEY AUTO_INCREMENT COMMENT '菜图id',
 rdid INT COMMENT '总概述id',
 pic  VARCHAR(128) COMMENT '图片路径' #中图片路径 
);
#插入图片数据 
INSERT INTO ms_pic_round VALUES
(null,1,"http://127.0.0.1:8000/img/section/round/round_a1.jpg"),
(null,1,"http://127.0.0.1:8000/img/section/round/round_a2.jpg"),
(null,1,"http://127.0.0.1:8000/img/section/round/round_a3.jpg"),
(null,1,"http://127.0.0.1:8000/img/section/round/round_a4.jpg"),
(null,1,"http://127.0.0.1:8000/img/section/round/round_a5.jpg"),
(null,1,"http://127.0.0.1:8000/img/section/round/round_a6.jpg"),
(null,1,"http://127.0.0.1:8000/img/section/round/round_a7.jpg"),

(null,2,"http://127.0.0.1:8000/img/section/round/round_b1.jpg"),
(null,2,"http://127.0.0.1:8000/img/section/round/round_b2.jpg"),
(null,2,"http://127.0.0.1:8000/img/section/round/round_b3.jpg"),
(null,2,"http://127.0.0.1:8000/img/section/round/round_b4.jpg"),
(null,2,"http://127.0.0.1:8000/img/section/round/round_b5.jpg"),
(null,2,"http://127.0.0.1:8000/img/section/round/round_b6.jpg"),
(null,2,"http://127.0.0.1:8000/img/section/round/round_b7.jpg"),

(null,3,"http://127.0.0.1:8000/img/section/round/round_c1.jpg"),
(null,3,"http://127.0.0.1:8000/img/section/round/round_c2.jpg"),
(null,3,"http://127.0.0.1:8000/img/section/round/round_c3.jpg"),
(null,3,"http://127.0.0.1:8000/img/section/round/round_c4.jpg"),
(null,3,"http://127.0.0.1:8000/img/section/round/round_c5.jpg"),
(null,3,"http://127.0.0.1:8000/img/section/round/round_c6.jpg"),
(null,3,"http://127.0.0.1:8000/img/section/round/round_c7.jpg"),

(null,4,"http://127.0.0.1:8000/img/section/round/round_d1.jpg"),
(null,4,"http://127.0.0.1:8000/img/section/round/round_d2.jpg"),
(null,4,"http://127.0.0.1:8000/img/section/round/round_d3.jpg"),
(null,4,"http://127.0.0.1:8000/img/section/round/round_d4.jpg"),
(null,4,"http://127.0.0.1:8000/img/section/round/round_d5.jpg"),
(null,4,"http://127.0.0.1:8000/img/section/round/round_d6.jpg"),
(null,4,"http://127.0.0.1:8000/img/section/round/round_d7.jpg");


#创建数据表 app_swipe
CREATE TABLE app_swipe(
  swipeid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(10),
  subtitle VARCHAR(30)   
);
INSERT INTO app_swipe  VALUES
(NULL,'早餐',"别人家的早餐，看着都羡慕"),
(NULL,'午餐',"午餐荤素搭配，好吃不腻"),
(NULL,'下午茶',"下午茶简单做，成就感爆棚"),
(NULL,'晚餐',"超给力晚餐，满足你的味蕾"),
(NULL,'夜宵',"夜色下的美食不可错过，吃完再睡吧");

alter table app_swipe_pic add constraint app_swipe1
foreign key(swipeid) references app_swipe(swipeid);

#创建数据表 app_swipe_pic
CREATE TABLE app_swipe_pic(
  swipid INT PRIMARY KEY AUTO_INCREMENT,
  swipeid INT,
  swiptitle VARCHAR(20),
  swipsubtitle VARCHAR(30),
  pic VARCHAR(128)   
);
#插入数据 app_swipe_pic
INSERT INTO app_swipe_pic  VALUES
(NULL,1,"芙蓉蛋卷",'色泽金黄，又香又软',"http://127.0.0.1:8000/img/app/home/swiperA1.jpg"),
(NULL,1,"猪肉锅贴",'酥脆可口，油香四溢',"http://127.0.0.1:8000/img/app/home/swiperA2.jpg"),
(NULL,1,"馒头披萨",'花样吃馒头，满足你的味蕾',"http://127.0.0.1:8000/img/app/home/swiperA3.jpg"),
(NULL,2,"小白菜粉丝丸子",'家常美味，一学就会',"http://127.0.0.1:8000/img/app/home/swiperB1.jpg"),
(NULL,2,"红烩牛腩",'冬吃牛肉，驱寒暖身',"http://127.0.0.1:8000/img/app/home/swiperB2.jpg"),
(NULL,2,"清炒萝卜缨",'爽口清新，解腻必吃',"http://127.0.0.1:8000/img/app/home/swiperB3.jpg"),
(NULL,3,"酒酿饼",'香甜松软，做法简单',"http://127.0.0.1:8000/img/app/home/swiperC1.jpg"),
(NULL,3,"玫瑰洛神饮",'美容养颜，缓解疲劳',"http://127.0.0.1:8000/img/app/home/swiperC2.jpg"),
(NULL,3,"菠萝干",'果香浓郁，香甜可口',"http://127.0.0.1:8000/img/app/home/swiperC3.jpg"),
(NULL,4,"茄汁花菜",'酸甜开胃，超下饭',"http://127.0.0.1:8000/img/app/home/swiperD1.jpg"),
(NULL,4,"香蒸排骨",'鲜嫩多汁，补肾润肺',"http://127.0.0.1:8000/img/app/home/swiperD2.jpg"),
(NULL,4,"花生酱椒盐花卷",'鲜香松软，家常美味',"http://127.0.0.1:8000/img/app/home/swiperD3.jpg"),
(NULL,5,"干炒牛河",'香气四溢，油润可口',"http://127.0.0.1:8000/img/app/home/swiperE1.jpg"),
(NULL,5,"上校鸡块",'学会它，在家吃KFC鸡块',"http://127.0.0.1:8000/img/app/home/swiperE2.jpg"),
(NULL,5,"腌笃鲜",'时鲜菜肴，美味难挡',"http://127.0.0.1:8000/img/app/home/swiperE3.jpg");





SELECT s.swiptitle, p.figure,p.ction,p.browse,p.effect,p.contents FROM app_swipe_pic s INNER JOIN  ms_practice  p ON  s.swipid = p.swipid=1;

#创建数据表 ms_practice
CREATE TABLE `ms_practice` (
  pracid INT PRIMARY KEY AUTO_INCREMENT,
  swipid INT,
  figure VARCHAR(128) COMMENT '菜样图',
  ction  INT COMMENT '收藏',
  browse INT COMMENT '浏览',
  effect VARCHAR(20) COMMENT '功效',
  contents VARCHAR(200)
);

INSERT INTO `ms_practice` VALUES 
(NULL,1,"http://127.0.0.1:8000/img/app/practice/practice_Y1.jpg",1103,34321,'','为孩子做早餐，既要好看又要好吃，更要营养，这道早餐芙蓉蛋卷就能完美的满足了所有要求！金灿灿的蛋卷包裹着鲜嫩的虾糜，不仅色...');
INSERT INTO `ms_practice` VALUES 
(NULL,2,"http://127.0.0.1:8000/img/app/practice/practice_Y2.jpg",1503,3321,'','锅贴是一种煎烙的馅类食品，制作精巧，味道精美，多以猪肉馅为主料，根据季节配以不同鲜蔬菜。锅贴的形状各地不同，一般是饺子形...'),

alter table ms_practice add constraint ms_practice_1
foreign key(swipid) references app_swipe_pic(swipid);

#创建数据表 ms_estimate(评分)
CREATE TABLE `ms_estimate` (
  esid INT PRIMARY KEY AUTO_INCREMENT,
  pracid INT,
  estima INT COMMENT '分数'
  -- practice VARCHAR(10) COMMENT '做法',
  -- taste VARCHAR(10) COMMENT '味道',
  -- ctime VARCHAR(10) COMMENT '时间',
  -- heat  VARCHAR(10) COMMENT '热量'
);
INSERT INTO `ms_estimate` VALUES 
(NULL,1,85);
INSERT INTO `ms_estimate` VALUES 
(NULL,2,50),
SELECT e.estima FROM ms_estimate e WHERE e.pracid = 1;

alter table ms_estimate add constraint ms_estimate_1
foreign key(pracid) references ms_practice(pracid);

#创建数据表 ms_class(类名)
CREATE TABLE `ms_class` (
  claid INT PRIMARY KEY AUTO_INCREMENT,
  pracid INT,
  class  VARCHAR(30)
);
INSERT INTO `ms_class` VALUES 
(NULL,1,'icon-chushimao'),
(NULL,1,'icon-shuiping-copy'),
(NULL,1,'icon-clock');
INSERT INTO `ms_class` VALUES 
(NULL,2,'icon-chushimao'),
(NULL,2,'icon-shuiping-copy'),
(NULL,2,'icon-clock'),
(NULL,2,'icon-clock'),

SELECT c.class FROM ms_class c WHERE c.pracid = 1;

alter table ms_class add constraint ms_class_1
foreign key(pracid) references ms_practice(pracid);

#创建数据表 ms_ests(类名分类)
CREATE TABLE `ms_ests`(
  estid INT PRIMARY KEY AUTO_INCREMENT,
  claid INT,
  title VARCHAR(20)
);
INSERT INTO `ms_ests` VALUES 
(NULL,1,'煮'),
(NULL,2,'咸鲜味'),
(NULL,3,'<10分钟');
SELECT es.title FROM ms_ests es INNER JOIN ms_class c ON es.claid = c.claid AND c.pracid = 1

alter table ms_ests add constraint ms_ests_1
foreign key(claid) references ms_class(claid);

#创建数据表 ms_ingredient (主料)
CREATE TABLE `ms_ingredient` (
  ingid INT PRIMARY KEY AUTO_INCREMENT,
  pracid INT,
  contenta VARCHAR(50)
);
INSERT INTO `ms_ingredient` VALUES 
(NULL,1,'鲜虾12只、'),
(NULL,1,'胡萝卜1根 、'),
(NULL,1,'鸡蛋3个');
SELECT i.contenta FROM ms_ingredient i WHERE i.pracid = 1;

alter table ms_ingredient add constraint ms_ingredient_1
foreign key(pracid) references ms_practice(pracid);


#创建数据表 ms_material (辅料)
CREATE TABLE `ms_material` (
  materid INT PRIMARY KEY AUTO_INCREMENT,
  pracid INT ,
  contentb VARCHAR(50)
);
INSERT INTO `ms_material` VALUES 
(NULL,1,'盐适量、'),
(NULL,1,'食用油少许、'),
(NULL,1,'料酒少许');
SELECT m.contentb FROM ms_material m WHERE m.pracid = 1;

alter table ms_material add constraint ms_material_1
foreign key(pracid) references ms_practice(pracid);

#创建数据表 ms_practice_step (步骤)
CREATE TABLE `ms_practice_step` (
  stepid INT PRIMARY KEY AUTO_INCREMENT,
  pracid INT,
  step VARCHAR(30),
  step_pic VARCHAR(128),
  step_content VARCHAR(50)
);
INSERT INTO `ms_practice_step` VALUES 
(NULL,1,'步骤1','http://127.0.0.1:8000/img/app/practive/practiceA-1.gif','胡萝卜去皮，切小碎丁'),
(NULL,1,'步骤2','http://127.0.0.1:8000/img/app/practive/practiceA-2.gif','鲜虾去壳，用刀剁成虾糜。（鲜虾放入冰箱先冷冻20分钟左右，再取出更好剥壳。）'),
(NULL,1,'步骤3','http://127.0.0.1:8000/img/app/practive/practiceA-3.gif','胡萝卜丁和虾糜放在碗中，打入1个鸡蛋。调入少许盐和料酒，用筷子搅拌均匀。'),
(NULL,1,'步骤4','http://127.0.0.1:8000/img/app/practive/practiceA-4.gif','另取碗打入2个鸡蛋，撒上少许盐，划散成蛋液。'),
(NULL,1,'步骤5','http://127.0.0.1:8000/img/app/practive/practiceA-5.gif','平底锅刷上一层薄油，烧热后倒入蛋液'),
(NULL,1,'步骤6','http://127.0.0.1:8000/img/app/practive/practiceA-6.gif','摊成圆圆的蛋饼，2个鸡蛋可做2张蛋饼。'),
(NULL,1,'步骤7','http://127.0.0.1:8000/img/app/practive/practiceA-7.gif','蛋饼煎好后取出，平铺在案板上，稍稍放凉，再将混合好的虾糜在蛋饼上铺满，轻轻卷起蛋饼，卷好后放入盘中备用。'),
(NULL,1,'步骤8','http://127.0.0.1:8000/img/app/practive/practiceA-8.gif','蒸锅中倒入适量冷水，将蛋卷放入锅中，大火蒸12-15分钟。'),
(NULL,1,'步骤9','http://127.0.0.1:8000/img/app/practive/practiceA-9.gif','蒸好后取出，切段后趁热食用。（可搭配个人喜欢的酱汁，比如寿司酱油或醋汁。）。');
SELECT sp.swiptitle,s.step ,s.step_pic,s.step_content FROM ms_practice_step s INNER JOIN ms_practice p INNER JOIN app_swipe_pic sp ON p.pracid= s.pracid = sp.swipid= 1;
alter table ms_practice_step add constraint ms_practice_step_1
foreign key(pracid) references ms_practice(pracid);

#创建数据表 ms_finished (成品)
CREATE TABLE `ms_finished` (
  finid INT PRIMARY KEY AUTO_INCREMENT,
  pracid INT,
  finid_pic VARCHAR(125)
);
INSERT INTO `ms_finished` VALUES 
(null,1,'http://127.0.0.1:8000/img/app/practive/practiceA-10.jpg'),
(null,1,'http://127.0.0.1:8000/img/app/practive/practiceA-11.jpg');
SELECT sp.swiptitle,f.finid_pic FROM ms_finished f INNER JOIN ms_practice p INNER JOIN app_swipe_pic sp ON f.pracid = p.pracid = sp.swipid= 1;
alter table ms_finished add constraint ms_finished_1
foreign key(pracid) references ms_practice(pracid);

#创建数据表 ms_skills (成品)
CREATE TABLE `ms_skills` (
  skid INT PRIMARY KEY AUTO_INCREMENT,
  pracid INT,
  title  VARCHAR(100)
);
INSERT INTO `ms_skills` VALUES 
(NULL,1,'1/  蒸制时间需根据蛋卷的数量和肉馅的多少适度调整'),
(NULL,1,'2/ 最好用鲜虾来制作虾糜，如果没有也可用超市的冷冻虾仁');
alter table ms_skills add constraint ms_skills_1
foreign key(pracid) references ms_practice(pracid);








#创建数据表 ms_recipes
CREATE TABLE `ms_recipes` (
  `recid` INT PRIMARY KEY AUTO_INCREMENT,
  `point` INT COMMENT '点击次数',
  `ctime` DATETIME,
  `title` VARCHAR(30)
);
INSERT INTO `ms_recipes` (`recid`, `point`, `ctime`, `title`) VALUES
(NULL, 180, '2018-12-28 20:45:57', '左宗棠鸡的做法'),
(NULL, 220, '2018-12-28 20:45:57', '紫薯山药糕的做法'),
(NULL, 520, '2018-12-28 20:45:57', '猪油拌饭的做法'),
(NULL, 423, '2018-12-28 20:45:57', '猪血汤的做法'),
(NULL, 640, '2018-12-28 20:45:57', '猪心汤的做法'),
(NULL, 410, '2018-12-28 20:45:57', '猪皮冻的做法'),
(NULL, 620, '2018-12-28 20:45:57', '猪肝粥的做法'),
(NULL, 10, '2018-12-28 20:45:57', '猪肝面的做法');

INSERT INTO `ms_recipes` (`recid`, `point`, `ctime`, `title`) VALUES
(NULL, 180, '2018-10-28 20:35:57', '豆豉鲮鱼的做法'),
(NULL, 220, '2018-09-28 20:45:57', '鱼头豆腐汤的家常做法'),
(NULL, 520, '2018-09-28 20:45:57', '梭子蟹怎么做好吃'),
(NULL, 423, '2018-11-28 20:45:57', '鱼香肉丝的家常做法');



#创建数据表 ms_recipespic
CREATE TABLE `ms_recipespic` (
  `picid` INT PRIMARY KEY AUTO_INCREMENT,
  `recid` INT,
  `pic` VARCHAR(255),
  `video` VARCHAR(255)
);
INSERT INTO `ms_recipespic` (`picid`, `recid`, `pic`,`video`) VALUES
(NULL, 1, 'http://127.0.0.1:8000/img/app/Videorecipes/recipes-1.jpg','http://127.0.0.1:8000/video/App/recipes1.jpg'),
(NULL, 2, 'http://127.0.0.1:8000/img/app/Videorecipes/recipes-2.jpg','http://127.0.0.1:8000/video/App/recipes2.jpg'),
(NULL, 3, 'http://127.0.0.1:8000/img/app/Videorecipes/recipes-3.jpg','http://127.0.0.1:8000/video/App/recipes3.jpg'),
(NULL, 4, 'http://127.0.0.1:8000/img/app/Videorecipes/recipes-4.jpg','http://127.0.0.1:8000/video/App/recipes4.jpg'),
(NULL, 5, 'http://127.0.0.1:8000/img/app/Videorecipes/recipes-5.jpg','http://127.0.0.1:8000/video/App/recipes5.jpg'),
(NULL, 6, 'http://127.0.0.1:8000/img/app/Videorecipes/recipes-6.jpg','http://127.0.0.1:8000/video/App/recipes6.jpg'),
(NULL, 7, 'http://127.0.0.1:8000/img/app/Videorecipes/recipes-7.jpg','http://127.0.0.1:8000/video/App/recipes7.jpg'),
(NULL, 8, 'http://127.0.0.1:8000/img/app/Videorecipes/recipes-8.jpg','http://127.0.0.1:8000/video/App/recipes8.jpg');

INSERT INTO `ms_recipespic` (`picid`, `recid`, `pic`,`video`) VALUES
(NULL, 9, 'http://127.0.0.1:8000/img/app/Videorecipes/recipesA-1.jpg','http://127.0.0.1:8000/video/App/recipesA1.jpg'),
(NULL, 10, 'http://127.0.0.1:8000/img/app/Videorecipes/recipesA-2.jpg','http://127.0.0.1:8000/video/App/recipesA2.jpg'),
(NULL, 11, 'http://127.0.0.1:8000/img/app/Videorecipes/recipesA-3.jpg','http://127.0.0.1:8000/video/App/recipesA3.jpg'),
(NULL, 12, 'http://127.0.0.1:8000/img/app/Videorecipes/recipesA-4.jpg','http://127.0.0.1:8000/video/App/recipesA4.jpg');

alter table ms_recipespic add constraint recipes1
foreign key(recid) references ms_recipes(recid);


alter table ms_recipes_practice add constraint recipes2
foreign key(recid) references ms_recipes(recid);
#创建数据表 ms_recipes_practice
CREATE TABLE `ms_recipes_practice` (
  `praid` INT PRIMARY KEY AUTO_INCREMENT,
  `recid` INT ,
  `practice` VARCHAR(30)
);

INSERT INTO `ms_recipes_practice` (`praid`, `recid`, `practice`) VALUES
(NULL, 1,'1、鸡腿肉280g切丁，姜片5g，蒜末5g，小米椒适量切段，甜椒20g切块'),
(NULL, 1,'2、倒入鸡腿肉，蛋黄一个，盐2g，玉米淀粉25g，搅拌均匀'),
(NULL, 1,'3、放入白砂糖15g，白醋15g，生抽8g，淀粉5g，辣椒油10g搅拌均匀'),
(NULL, 1,'4、起锅倒入食用油200ml，大火烧至七成熟，放入鸡肉，大火炸至表面金黄'),
(NULL, 1,'5、另起锅倒入食用油5ml，倒入姜片，蒜末，小米椒，大火爆香'),
(NULL, 1,'6、倒入鸡肉，翻炒均匀，倒入调料 翻炒均匀，倒入甜椒');

INSERT INTO `ms_recipes_practice` (`praid`, `recid`, `practice`) VALUES
(NULL, 2,'1、紫薯200克切段，山药150克切段'),
(NULL, 2,'2、起锅隔水蒸熟，剥皮'),
(NULL, 2,'3、倒入紫薯，加糖粉10克，捣成泥'),
(NULL, 2,'4、倒入山药，糖粉10克，捣成泥'),
(NULL, 2,'5、取山药泥和紫薯泥各25克团成团，取模具按压成型');

INSERT INTO `ms_recipes_practice` (`praid`, `recid`, `practice`) VALUES
(NULL, 3,'1、葱花5克，猪肉50克切丁'),
(NULL, 3,'2、取米饭300克，加入酱油10克，撒入葱花，黑芝麻2克'),
(NULL, 3,'3、起锅倒入猪油，食用油2毫升，煸炒出油'),
(NULL, 3,'4、过滤猪油加至米饭中'),

(NULL, 4,'1、葱花5克，蒜末5克，姜末3克，猪血150克切片'),
(NULL, 4,'2、食用油5毫升，倒入姜末，蒜末，大火爆香'),
(NULL, 4,'3、倒入清水500毫升，倒入猪血，生抽5克，盐2克，鸡粉3克搅拌均匀'),
(NULL, 4,'4、大火煮沸，加入胡椒粉2克，倒入葱花，香油5克'),

(NULL, 5,'1、猪心一个切片'),
(NULL, 5,'2、倒入猪心，焯水2分钟'),
(NULL, 5,'3、清水一升，倒入猪心，加入冰糖10克，姜片5克，枣仁粉10克煮沸'),

(NULL, 6,'1、猪皮280克切段，蒜末姜片各5克，香菜7克，小葱一根切段'),
(NULL, 6,'2、倒入猪皮开水下锅，焯水去腥去血沫'),
(NULL, 6,'3、清水1升大火煮沸，倒入猪皮，盐2克，生抽15克，老抽5克，倒入姜片，葱段，桂皮一块，八角一个，香叶片，料酒5克，大火煮沸转小火煮5分钟'),
(NULL, 6,'4、猪皮倒入模具，加入汤汁，冰箱冷冻成型'),
(NULL, 6,'5、做调料，醋20克，生抽10克，倒入蒜末，香菜，搅拌均匀'),
(NULL, 6,'6、猪皮冻切片'),

(NULL, 7,'1、清水500毫升，大米100克，菜心一根切段，猪肝70克切段'),
(NULL, 7,'2、倒入猪肝，清水浸泡1小时，，反复换水至血析出'),
(NULL, 7,'3、清水一升，倒入大米，大火煮沸'),
(NULL, 7,'4、沥干水分，倒入猪肝，菜心，盐2克，胡椒2克，搅拌均匀'),

(NULL, 8,'1、姜丝5克，葱末5克，菜心一根切段，猪肝100克切条'),
(NULL, 8,'2、倒入猪肝，清水500毫升浸泡一小时，反复换水至血析出'),
(NULL, 8,'3、沥干水分倒入猪肝，加入料酒5克，盐2克，生抽5克，老抽5克，搅拌均匀'),
(NULL, 8,'4、食用油5毫升，倒入姜末，猪肝，清水500毫升，鸡粉2克，盐2克，菜心，翻炒均匀'),
(NULL, 8,'5、清水大火煮沸，面条100克，搅拌均匀'),
(NULL, 8,'6、捞出面条，倒入汤汁，枸杞10粒，倒入葱末，胡椒粉1克');


INSERT INTO `ms_recipes_practice` (`praid`, `recid`, `practice`) VALUES
(NULL, 9,'1、鲮鱼切片'),
(NULL, 9,'2、锅中放油，大火烧至七成熟，放入鲮鱼，小火炸至酥脆'),
(NULL, 9,'3、锅中放油，倒入姜丝，蒜片，大火爆香'),
(NULL, 9,'4、加入豆豉，翻炒均匀，倒入鲮鱼，翻炒均'),


(NULL, 10,'1.豆腐切块，煎至豆腐两面金黄待用'),
(NULL, 10,'2.汤锅开水放入姜、料酒、鱼头、豆腐'),
(NULL, 10,'3.小火慢煮20分钟至汤色变白'),

(NULL, 11,'1、香葱切段，准备姜片，蒜片，梭子蟹揭盖，'),
(NULL, 11,'2、锅中倒入食用油，姜片，葱段，蒜片，花椒，八角，大火翻炒'),
(NULL, 11,'3、加入生抽，醋，水，倒入梭子蟹，大火'),
(NULL, 11,'4、加入盐，白砂糖，大火收汁'),

(NULL, 12,'1.葱姜、料酒、水淀粉腌制猪瘦肉'),
(NULL, 12,'2.调鱼香酱汁'),
(NULL, 12,'3.锅内热油下葱爆香，放入腌好的肉炒至变色'),
(NULL, 12,'4.加入鱼香汁，配菜大火翻炒收汁出锅');


