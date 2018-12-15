$(function(){
  
  $("<link rel='stylesheet' href='css/header.css'>").appendTo("head");

  $.ajax({
    url:"header.html",
    type:"get",
    success: function(res) {
      $(res).replaceAll("#header") ;
      // 导航栏动态下拉菜单
      $(".main_nav>li:nth-child(2)").hover(
        function(){
            $(this).toggleClass("hover")
      })
      $(".main_nav>li:nth-child(3)").hover(
        function(){
            $(this).toggleClass("hover")
      })
     
    }
  })
  ajax({
    url:"http://localhost:8000/header",
    type:"get",
    dataType:"json"
  })
  .then(res=>{
    

  })

})
