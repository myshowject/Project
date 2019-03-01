const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/swipe",(req,res)=>{
  var sql = "SELECT s.swipeid, s.title,s.subtitle,p.swiptitle,p.swipid,p.swipsubtitle,p.pic FROM app_swipe s INNER JOIN app_swipe_pic p ON s.swipeid = p.swipeid";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
module.exports = router;