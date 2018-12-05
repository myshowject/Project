$(function(){
  $("<link rel='stylesheet' href='css/header.css'>").appendTo("head")
  $.ajax({
    url:"http://localhost:8000/header.html",
    type:"get",
    success: function(res) {
      $(res).replaceAll("#header")
    }
  })
})