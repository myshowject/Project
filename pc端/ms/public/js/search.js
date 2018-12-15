$(function(){
  $("<link rel='stylesheet' href='css/search.css'>").appendTo("head")
  $("<link rel='stylesheet' href='css/base.css'>").appendTo("head")
  $.ajax({
    url:"search.html",
    type:"get",
    success: function(res) {
      $(res).replaceAll("#search")
    }
  })
})