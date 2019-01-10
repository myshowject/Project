const express = require("express");
const router = express.Router();
const pool = require("../pool");

  router.get("/getNewsInfo",(req,res)=>{
    var id = req.query.id;
    var sql = "SELECT r.point,r.ctime,r.title,p.video,p.pic FROM ms_recipes r INNER JOIN ms_recipespic p on p.recid=r.recid  WHERE r.recid = ? ";
    pool.query(sql,[id],(err,result)=>{
      if(err) throw err;
      res.send({code:1,data:result[0]});
    }) 
  })
  router.get("/getPractice",(req,res)=>{
    var recid = req.query.recid; 
    var sql = "SELECT pr.practice FROM ms_recipes r INNER JOIN ms_recipespic p INNER JOIN ms_recipes_practice pr ON p.recid = r.recid AND r.recid = pr.recid WHERE pr.recid = ? ";
    pool.query(sql,[recid],(err,result)=>{
      if(err) throw err;
      res.send({code:1,data:result})
    })
  })

module.exports = router;