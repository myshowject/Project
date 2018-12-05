//使用express构建web服务器
const express = require("express");
const bodyParser = require("body-parser");
// 引入路由模块
const index = require("./routes/index");


var app = express();
var server = app.listen(8000,()=>{
  console.log("web服务器创建成功！ 端口为8000")
})
//使用body-parser中间插件
app.use(bodyParser.urlencoded({
  extended:false
}))
// 托管静态资源到public目录下
app.use(express.static("public"));
// 使用路由器来管理路由
// http://localhost:8000/index
app.use('/index',index);