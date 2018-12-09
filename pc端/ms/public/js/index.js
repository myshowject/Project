// window.onload = function(){
//   ajax({
//     url:"http://localhost:8000/index",
//     type:"get",
//     // data:,
//     dataType:"json" //告诉ajax 将json字符串自动转为对象
//   })
//   .then(res=>{
//     var p = res[0];
//     var {title} = p
//     var html=``
//     var div = document.querySelector();
//     div.innerHtml=html;
//   })
// }
// 

// 获取轮播图有几个
// var $div1 =$(".w_item").length;
// console.log($div1) 
// $(".index_w_main").append($(".w_item").eq(0).clone())
var x=0;
// 自动轮播
// var timer=setInterval(next,3000);
// 鼠标进入停止轮播
// $("index_w").mouseenter(function(){
//   clearInterval(timer);
// })
// 鼠标移出自动轮播
// $("index_w").mouseleave(function(){
//   timer=setInterval(next,2000);
// })

// 右按钮点击事件
$(".index_btn_next").click(next);
$(".index_btn_prev").click(prev);
var lbName=["z_item_1","z_item_2","z_item_3","z_item_4","z_item_5"];
var dis=["display display_h z_item_dis","display display_h","display display_h","display display_h","display display_h"]
var div_lb=document.querySelectorAll(".index_w_main>div");
var display=document.querySelectorAll(".display");
console.log(display)
console.log(div_lb)
function next(){
 lbName.unshift(lbName[4]);
 lbName.pop();
 dis.unshift(dis[4]);
 dis.pop();
 for(var i=0;i<div_lb.length;i++){
   div_lb[i].setAttribute("class","w_item "+lbName[i]);
   display[i].setAttribute("class",dis[i]);  
  } 
  x++;
 if(x>5){
   x=0;
 }
}
function prev(){
  lbName.push(lbName[0])
  lbName.shift();
  dis.push(dis[0]);
  dis.shift();
  for(var i=0;i<div_lb.length;i++){
    div_lb[i].setAttribute("class","w_item "+lbName[i]);
    display[i].setAttribute("class",dis[i]);  
  }
  x--;
  if(x<0){
    x=5;
  }
}

// $(".index_w").on("mouseover",".timex",function(e){
//     var $span=$(this);
//     console.log($span);
//      $span.addClass("time_top_red")
//           .siblings().removeClass("time_top_red")
//     for(var item of div_lb){
//       console.log(item)
//     }
            
// })
// 指示器
var oneWidth= $(".w_item").eq(0).width();
console.log(oneWidth)
$(".time_p_w").on("click",".timex",function () {
  $(this).addClass("time_top_red").siblings().removeClass("time_top_red") 
  var index=$(this).index();
  console.log(index)
  //获取哪个按钮被点击，也就是找到被点击按钮的索引值    
   $(".index_w_main").animate({"left":-oneWidth*index  })  
  //注意此处用到left属性，所以ul的样式里面需要设置position: relative; 让ul左移N个图片大小的宽度，N根据被点击的按钮索引值index确定 
  
})
