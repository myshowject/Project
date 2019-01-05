const express =require("express");
const router = express.Router();
const pool = require("../pool");

  // 验证用户名是否存在
  router.get("/existsName",(req,res)=>{
    var uname = req.query.uname;
    var url = 'SELECT * FROM ms_login WHERE uname = ? ';
    pool.query(url,[uname],(err,result)=>{
      if(err)throw err; 
      if(result.length > 0){
        res.send({code:1,msg:'该用户名已存在'})
      }else{
        res.send({code:-1,msg:'该用户名可用'})
      }
    })
  })

  // 注册账号
  router.post("/register",(req,res)=>{
    var uname = req.body.uname;
    var upwd = req.body.upwd;
    var sql = "INSERT INTO ms_login (`id`,`uname`,`upwd`) VALUES (null,?,md5(?))";
    pool.query(sql,[uname,upwd],(err,result)=>{
      if(err) throw err;
      if(result.affectedRows>0){
        res.send({code:1,msg:'注册成功'})
      }else{
        res.send({code:-1,msg:'注册失败'})
      }
    })
  })



module.exports = router;