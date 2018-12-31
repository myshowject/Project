const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.post("/signin",(req,res)=>{
  var uname = req.body.uname;
  var upwd = req.body.upwd;
  var sql = "SELECT * FROM ms_login WHERE uname = ? AND upwd = md5(?)";
  pool.query(sql,[uname,upwd],(err,result)=>{
    if(err) throw err;
    console.log(result);
    if(result.length==1){
      req.session.id = result[0]["id"];
      console.log(req.session.id);
      res.send({code:1,uname:result[0]["uname"],msg:"登录成功"})
    }else{
      res.send({code:-1,msg:"用户名或密码有误!"})
    }
  })
})
router.get("/islogin",(req,res)=>{
  if(req.session.id==undefined)
  res.send({code:-1});
  else
  res.send({code:1});
})
router.get("/signout",(req,res)=>{
  req.session.uid = undefined;
  res.end();
})

module.exports = router;