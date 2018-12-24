const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/signin",(req,res)=>{
  var uname = req.query.uname;
  var upwd = req.query.upwd;
  var sql = "SELECT count(id) c FROM ms_login WHERE uname = ? AND upwd = md5(?)";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) throw err;
    var obj = result[0].c;
    if(obj ==1 ){
      req.session.uname = uname;
      res.send({code:1,msg:"登录成功"})
    }else{
      res.send({code:-1,msg:"用户名或密码有误!"})
    }
  })
})

module.exports = router;