const express = require("express");
const router = express.Router();
const pool = require("../pool");

// http://localhost:8000/index
router.get("/",(req,res)=>{
  var sql = "SELECT *FROM ms_pic_header"
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})

module.exports = router;