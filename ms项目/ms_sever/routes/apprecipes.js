const express = require("express");
const router = express.Router();
const pool = require("../pool");

router.get("/videorecipes",(req,res)=>{
  var sql = "SELECT * FROM ms_recipes r INNER JOIN ms_recipespic p on r.recid=p.recid;"
  pool.query(sql,(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})

module.exports = router;