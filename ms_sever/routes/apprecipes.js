const express = require("express");
const router = express.Router();
const pool = require("../pool");

// router.get("/videorecipes",(req,res)=>{
//   var sql = "SELECT * FROM ms_recipes r INNER JOIN ms_recipespic p on r.recid=p.recid;"
//   pool.query(sql,(err,result)=>{
//     if(err) throw err;
//     res.send(result);
//   })
// })

router.get("/getRecipes",(req,res)=>{
  //1:参数       pno 页码;pageSize 页大小
  var pno = req.query.pno;
  var pageSize = req.query.pageSize;
  //1.2:默认值
  if(!pno){
    pno = 1;
  }
  if(!pageSize){
    pageSize = 4;
  }
  //2:验证正则表达式
  var reg = /^[0-9]{1,}$/;
  if(!reg.test(pno)){
     res.send({code:-1,msg:"页码格式不正确"});
     return;
  }
  if(!reg.test(pageSize)){
    res.send({code:-2,msg:"页大小格式不正确"});
    return;
  }
  //3:创建sql
  //  查询总页数
  var sql = "SELECT count(recid) as c FROM ms_recipes";
  var progress = 0, //sql执行进度
  obj = {code:1};
  pool.query(sql,(err,result)=>{
       if(err)throw err;
       //console.log(result[0].c);
       var pageCount = Math.ceil(result[0].c/pageSize);
       obj.pageCount = pageCount;
       progress += 50;
       if(progress == 100){
        res.send(obj);
       }
  });
  //  查询当前页内容
  var sql=" SELECT * FROM ms_recipes r INNER JOIN ms_recipespic p on r.recid=p.recid LIMIT ? , ?";
  var offset = parseInt((pno-1)*pageSize);
  pageSize = parseInt(pageSize);
  pool.query(sql,[offset,pageSize],(err,result)=>{
    if(err)throw err;
    //console.log(result);
    obj.data = result;
    progress += 50;
    if(progress == 100){
      res.send(obj);
    }
  }); 
})



module.exports = router;