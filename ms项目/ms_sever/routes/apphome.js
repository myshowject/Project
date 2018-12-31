const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/swipe",(req,res)=>{
  var sql = "SELECT * FROM app_swipe";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
module.exports = router;