//使用express构建web服务器
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const session = require("express-session");
// 引入路由模块
const index = require("./routes/index");
const header = require("./routes/header");
const login =require("./routes/login");


var app = express();
var server = app.listen(8000,()=>{
  console.log("web服务器创建成功！ 端口为8000")
})
app.use(cors({
  origin:["http://127.0.0.1:8000","http://localhost:8000","http://127.0.0.1:8001"],
  credentials:true
}))
// 7.2：对模块配置
app.use(session({
  secret:"128位随机字符串",//安全字符串
  resave:false,           //请求保存
  saveUninitialized:true,  //初始化保存
  cookie:{
    maxAge:1000 * 60 * 60 * 24
  }
}));
//使用body-parser中间插件
app.use(bodyParser.urlencoded({
  extended:false
}))
// 托管静态资源到public目录下
app.use(express.static("public"));
// 使用路由器来管理路由
// http://localhost:8000/index
app.use('/index',index);
app.use('/header',header);
app.use("/login",login);