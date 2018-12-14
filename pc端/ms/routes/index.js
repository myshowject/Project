const express = require("express");
const router = express.Router();
const pool = require("../pool");

// http://localhost:8000/index
router.get("/item",(req,res)=>{
  var sql = "SELECT * FROM ms_index_item a INNER JOIN ms_index_item1 b ON a.iid=b.iid";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result)
  })
})

module.exports = router;
