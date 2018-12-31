const express = require("express");
const router = express.Router();
const pool = require("../pool");

// http://localhost:8000/index/item
// index_w_main 第一个手动轮播数据
router.get("/item",(req,res)=>{
  var sql = "SELECT * FROM ms_index_item a INNER JOIN ms_index_item1 b INNER JOIN ms_pic_zitem c ON a.iid=b.iid and b.item1id=c.item1id";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
// http://localhost:8000/index/food
router.get("/food",(req,res)=>{
  var sql = "SELECT f.food_title,p.pic_title,p.md FROM ms_food f INNER JOIN ms_pic_food p ON f.fdid=p.fdid";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
// http://localhost:8000/index/round
router.get("/round",(req,res)=>{
  var sql = "SELECT * FROM ms_round r  INNER JOIN ms_pic_round p  INNER JOIN ms_round_name n  INNER JOIN ms_round_comments c  ON r.rdid=p.rdid  AND p.picid =n.picid AND n.rnid =c.rnid";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
module.exports = router;
