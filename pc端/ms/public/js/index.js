window.onload= function(){
  ajax({
    url:"http://localhost:8000/index/item",
    type:"get",
    dataType:"json"
  })
  .then(res=>{
    // console.log(res)
    var html =""
    for(var p of res.slice(0,3)){
      // console.log(p);
      var {headtitle,headline,title,efficacy,benefits,md} = p;
       html += `<li>
      <a target="_blank" href="#" title="${title}" class="img">
        <img src="${md}" alt="${title}">
      </a>
      <div class="li_div">
        <h2>
          <a target="_blank" href="#" title="${title}">${title}</a>
        </h2>
        <strong>${efficacy}</strong>
        <span>
          <a href="###">${benefits}</a>
          <b class="bg_b"></b>
        </span>
      </div>
    </li>`
   
    }
    var a = document.querySelector(".index_w_main>:first-child>:nth-child(1)");
    a.innerHTML += html;
   
    
    var  html =`<h3 class="display display_h ">今日${headtitle}推荐：${headline}</h3> `;
    var h3 = document.querySelector(".index_w_main>:first-child");
    h3.innerHTML+=html;

    var html =""
    for(var p of res.slice(3,6)){
      // console.log(p);
      var {headtitle,headline,title,efficacy,benefits,md} = p;
       html += `<li>
      <a target="_blank" href="#" title="${title}" class="img">
        <img src="${md}" alt="${title}">
      </a>
      <div class="li_div">
        <h2>
          <a target="_blank" href="#" title="${title}">${title}</a>
        </h2>
        <strong>${efficacy}</strong>
        <span>
          <a href="###">${benefits}</a>
          <b class="bg_b"></b>
        </span>
      </div>
    </li>`
   
    }
    var a = document.querySelector(".index_w_main>:nth-child(2)>:nth-child(1)");
    a.innerHTML += html;
   
    
    var  html =`<h3 class="display display_h ">今日${headtitle}推荐：${headline}</h3> `;
    var h3 = document.querySelector(".index_w_main>:nth-child(2)");
    h3.innerHTML+=html;
   
   
    var html =""
    for(var p of res.slice(6,9)){
      // console.log(p);
      var {headtitle,headline,title,efficacy,benefits,md} = p;
       html += `<li>
      <a target="_blank" href="#" title="${title}" class="img">
        <img src="${md}" alt="${title}">
      </a>
      <div class="li_div">
        <h2>
          <a target="_blank" href="#" title="${title}">${title}</a>
        </h2>
        <strong>${efficacy}</strong>
        <span>
          <a href="###">${benefits}</a>
          <b class="bg_b"></b>
        </span>
      </div>
    </li>`
   
    }
    var a = document.querySelector(".index_w_main>:nth-child(3)>:nth-child(1)");
    a.innerHTML += html;
   
    
    var  html =`<h3 class="display display_h ">今日${headtitle}推荐：${headline}</h3> `;
    var h3 = document.querySelector(".index_w_main>:nth-child(3)");
    h3.innerHTML+=html;

    var html =""
    for(var p of res.slice(9,12)){
      // console.log(p);
      var {headtitle,headline,title,efficacy,benefits,md} = p;
       html += `<li>
      <a target="_blank" href="#" title="${title}" class="img">
        <img src="${md}" alt="${title}">
      </a>
      <div class="li_div">
        <h2>
          <a target="_blank" href="#" title="${title}">${title}</a>
        </h2>
        <strong>${efficacy}</strong>
        <span>
          <a href="###">${benefits}</a>
          <b class="bg_b"></b>
        </span>
      </div>
    </li>`
   
    }
    var a = document.querySelector(".index_w_main>:nth-child(4)>:nth-child(1)");
    a.innerHTML += html;
   
    
    var  html =`<h3 class="display display_h ">今日${headtitle}推荐：${headline}</h3> `;
    var h3 = document.querySelector(".index_w_main>:nth-child(4)");
    h3.innerHTML+=html;


    var html =""
    for(var p of res.slice(-3)){
      // console.log(p);
      var {headtitle,headline,title,efficacy,benefits,md} = p;
       html += `<li>
      <a target="_blank" href="#" title="${title}" class="img">
        <img src="${md}" alt="${title}">
      </a>
      <div class="li_div">
        <h2>
          <a target="_blank" href="#" title="${title}">${title}</a>
        </h2>
        <strong>${efficacy}</strong>
        <span>
          <a href="###">${benefits}</a>
          <b class="bg_b"></b>
        </span>
      </div>
    </li>`
   
    }
    var a = document.querySelector(".index_w_main>:last-child>:nth-child(1)");
    a.innerHTML += html;
   
    
    var  html =`<h3 class="display display_h ">今日${headtitle}推荐：${headline}</h3> `;
    var h3 = document.querySelector(".index_w_main>:last-child");
    h3.innerHTML+=html;
  })

  ajax({
    url:"http://localhost:8000/index/food",
    type:"get",
    dataType:"json"
  })
  .then(res=>{
    // console.log(res);
    // 水果
    var html = "";
    for(var p of res.slice(0,8)){
      // console.log(p)
      var {food_title,pic_title,md} = p;
      html +=` <li>
                <a target="_blank" href="javascript:;">
                  <img src="${md}" alt="" srcset="">
                  <span class="food_name">
                    <b class="bg_b1"></b>
                    <strong>${pic_title}</strong>
                  </span>
                </a>
               </li>`
    }
    var ul = document.querySelector(".food_w>:first-child>.a_div>ul.h");
    ul.innerHTML +=html;
    var html =`  <a href="javascript:;" class="food_c_a">${food_title}</a>`
    var li = document.querySelector(".food_w>:first-child");
    li.innerHTML +=html;
    
  // 蔬菜
    var html = "";
    for(var p of res.slice(8,16)){
      var {food_title,pic_title,md} = p;
      html +=` 
      <li>
        <a target="_blank" href="javascript:;">
          <img src="${md}" alt="" srcset="">
          <span class="food_name">
            <b class="bg_b1"></b>
            <strong>${pic_title}</strong>
          </span>
        </a>
      </li>`
    }
    var ul = document.querySelector(".food_w>:nth-child(2)>.a_div>ul.h");
    ul.innerHTML +=html;


    var html =`  <a href="javascript:;" class="food_c_a">${food_title}</a>`
    var li = document.querySelector(".food_w>:nth-child(2)");
    li.innerHTML +=html;
  
    // 五谷
    var html = "";
    for(var p of res.slice(16,24)){
      var {food_title,pic_title,md} = p;
      html +=` 
      <li>
        <a target="_blank" href="javascript:;">
          <img src="${md}" alt="" srcset="">
          <span class="food_name">
            <b class="bg_b1"></b>
            <strong>${pic_title}</strong>
          </span>
        </a>
      </li>`
    }
    var ul = document.querySelector(".food_w>:nth-child(3)>.a_div>ul.h");
    ul.innerHTML +=html;


    var html =`  <a href="javascript:;" class="food_c_a">${food_title}</a>`
    var li = document.querySelector(".food_w>:nth-child(3)");
    li.innerHTML +=html;

    // 生鲜
    var html = "";
    for(var p of res.slice(-8)){
      var {food_title,pic_title,md} = p;
      html +=` 
      <li>
        <a target="_blank" href="javascript:;">
          <img src="${md}" alt="" srcset="">
          <span class="food_name">
            <b class="bg_b1"></b>
            <strong>${pic_title}</strong>
          </span>
        </a>
      </li>`
    }
    var ul = document.querySelector(".food_w>:last-child>.a_div>ul.h");
    ul.innerHTML +=html;


    var html =`  <a href="javascript:;" class="food_c_a">${food_title}</a>`
    var li = document.querySelector(".food_w>:last-child");
    li.innerHTML +=html;
  })

  ajax({
    url:"http://localhost:8000/index/round",
    type:"get",
    dataType:"json"
  })
  .then(res=>{
    // console.log(res);
    var html = "";
    for(var p of res.slice(0,7)){
    console.log(p)
    var {rname,contents,point,author,steps,practice,pic} = p;
      html += ` <div class="round_class">
      <a target="_blank" href="javascript:;" title="${rname}" class="big">
        <img class="img" src="${pic}" alt="${rname}">
        <div class="r_c_w">
          <div class="i">
            <div class="c1">
              <strong>${rname}</strong>
              <span>${contents} 评论  ${point} 人气</span>
              <em>${author}</em>
            </div>
            <div class="c2">
              <ul>
                <li class="li1">${steps}</li>
                <li class="li2">${practice}</li>
              </ul>
            </div>
          </div>
        </div>
      </a>
    </div>`
    }
    html +=` <div class="round_class">
    <div class="round_list_more">
      <h3>热门栏目推荐</h3>
      <ul>
        <li><a href="javascript:;">最新菜谱</a></li>
        <li><a href="javascript:;">家常菜</a></li>
        <li><a href="javascript:;">凉菜</a></li>
        <li><a href="javascript:;">素食</a></li>
        <li><a href="javascript:;">早餐</a></li>
        <li><a href="javascript:;">乌发</a></li>
        <li><a href="javascript:;">高血压</a></li>
        <li><a href="javascript:;">烘焙</a></li>
        <li><a href="javascript:;">川菜</a></li>
        <li><a href="javascript:;">粤菜</a></li>
        <li><a href="javascript:;">湘菜</a></li>
        <li><a href="javascript:;">甜点</a></li>
        <li><a href="javascript:;" class="host">进入菜谱大全 &gt;&gt;</a></li>
      </ul>
    </div>
  </div> `
    var div = document.querySelector(".shuffling>:nth-child(2)>:nth-child(2)");
    console.log(div);
    div.innerHTML +=html;
   
   
    var html = "";
    for(var p of res.slice(7,14)){
    console.log(p)
    var {rname,contents,point,author,steps,practice,pic} = p;
      html += ` <div class="round_class">
      <a target="_blank" href="javascript:;" title="${rname}" class="big">
        <img class="img" src="${pic}" alt="${rname}">
        <div class="r_c_w">
          <div class="i">
            <div class="c1">
              <strong>${rname}</strong>
              <span>${contents} 评论  ${point} 人气</span>
              <em>${author}</em>
            </div>
            <div class="c2">
              <ul>
                <li class="li1">${steps}</li>
                <li class="li2">${practice}</li>
              </ul>
            </div>
          </div>
        </div>
      </a>
    </div>`
    }
    html +=` <div class="round_class">
    <div class="round_list_more">
      <h3>热门栏目推荐</h3>
      <ul>
        <li><a href="javascript:;">最新菜谱</a></li>
        <li><a href="javascript:;">家常菜</a></li>
        <li><a href="javascript:;">凉菜</a></li>
        <li><a href="javascript:;">素食</a></li>
        <li><a href="javascript:;">早餐</a></li>
        <li><a href="javascript:;">乌发</a></li>
        <li><a href="javascript:;">高血压</a></li>
        <li><a href="javascript:;">烘焙</a></li>
        <li><a href="javascript:;">川菜</a></li>
        <li><a href="javascript:;">粤菜</a></li>
        <li><a href="javascript:;">湘菜</a></li>
        <li><a href="javascript:;">甜点</a></li>
        <li><a href="javascript:;" class="host">进入菜谱大全 &gt;&gt;</a></li>
      </ul>
    </div>
  </div> `
    var div = document.querySelector(".shuffling>:nth-child(3)>:nth-child(2)");
    console.log(div);
    div.innerHTML +=html;
   
   
    var html = "";
    for(var p of res.slice(14,21)){
    console.log(p)
    var {rname,contents,point,author,steps,practice,pic} = p;
      html += ` <div class="round_class">
      <a target="_blank" href="javascript:;" title="${rname}" class="big">
        <img class="img" src="${pic}" alt="${rname}">
        <div class="r_c_w">
          <div class="i">
            <div class="c1">
              <strong>${rname}</strong>
              <span>${contents} 评论  ${point} 人气</span>
              <em>${author}</em>
            </div>
            <div class="c2">
              <ul>
                <li class="li1">${steps}</li>
                <li class="li2">${practice}</li>
              </ul>
            </div>
          </div>
        </div>
      </a>
    </div>`
    }
    html +=` <div class="round_class">
    <div class="round_list_more">
      <h3>热门栏目推荐</h3>
      <ul>
        <li><a href="javascript:;">最新菜谱</a></li>
        <li><a href="javascript:;">家常菜</a></li>
        <li><a href="javascript:;">凉菜</a></li>
        <li><a href="javascript:;">素食</a></li>
        <li><a href="javascript:;">早餐</a></li>
        <li><a href="javascript:;">乌发</a></li>
        <li><a href="javascript:;">高血压</a></li>
        <li><a href="javascript:;">烘焙</a></li>
        <li><a href="javascript:;">川菜</a></li>
        <li><a href="javascript:;">粤菜</a></li>
        <li><a href="javascript:;">湘菜</a></li>
        <li><a href="javascript:;">甜点</a></li>
        <li><a href="javascript:;" class="host">进入菜谱大全 &gt;&gt;</a></li>
      </ul>
    </div>
  </div> `
    var div = document.querySelector(".shuffling>:nth-child(4)>:nth-child(2)");
    console.log(div);
    div.innerHTML +=html;
  
  
    var html = "";
    for(var p of res.slice(-7)){
    console.log(p)
    var {rname,contents,point,author,steps,practice,pic} = p;
      html += ` <div class="round_class">
      <a target="_blank" href="javascript:;" title="${rname}" class="big">
        <img class="img" src="${pic}" alt="${rname}">
        <div class="r_c_w">
          <div class="i">
            <div class="c1">
              <strong>${rname}</strong>
              <span>${contents} 评论  ${point} 人气</span>
              <em>${author}</em>
            </div>
            <div class="c2">
              <ul>
                <li class="li1">${steps}</li>
                <li class="li2">${practice}</li>
              </ul>
            </div>
          </div>
        </div>
      </a>
    </div>`
    }
    html +=` <div class="round_class">
    <div class="round_list_more">
      <h3>热门栏目推荐</h3>
      <ul>
        <li><a href="javascript:;">最新菜谱</a></li>
        <li><a href="javascript:;">家常菜</a></li>
        <li><a href="javascript:;">凉菜</a></li>
        <li><a href="javascript:;">素食</a></li>
        <li><a href="javascript:;">早餐</a></li>
        <li><a href="javascript:;">乌发</a></li>
        <li><a href="javascript:;">高血压</a></li>
        <li><a href="javascript:;">烘焙</a></li>
        <li><a href="javascript:;">川菜</a></li>
        <li><a href="javascript:;">粤菜</a></li>
        <li><a href="javascript:;">湘菜</a></li>
        <li><a href="javascript:;">甜点</a></li>
        <li><a href="javascript:;" class="host">进入菜谱大全 &gt;&gt;</a></li>
      </ul>
    </div>
  </div> `
    var div = document.querySelector(".shuffling>:nth-child(5)>:nth-child(2)");
    console.log(div);
    div.innerHTML +=html;

   
  })

  var index=0;
  // 自动轮播
  // var timer=setInterval(next,3000);
  // 鼠标进入停止轮播
  // $(".index_w").mouseenter(function(){
  //   clearInterval(timer);
  // })
  // 鼠标移出自动轮播
  // $(".index_w").mouseleave(function(){
  //   timer=setInterval(next,2000);
  // })

  // 右按钮点击事件
  $(".index_btn_next").click(next);
  $(".index_btn_prev").click(prev);


  var lbName=["z_item_1","z_item_2","z_item_3","z_item_4","z_item_5"];
  var spans = document.querySelectorAll(".timex");
  // console.log(spans)
  var div_lb=document.querySelectorAll(".index_w_main>div");
  // console.log(div_lb)

  // 指示器样式设置
  function spanColor(){
    for(var i of spans){
      // console.log(i)
      i.className =" timex ";
    }
    spans[index].className +=" time_top_red";
  }
  spanColor();

  function next(){
  lbName.unshift(lbName[4]);
  lbName.pop();
    for(var i=0;i< div_lb.length;i++){
    div_lb[i].setAttribute("class","w_item "+lbName[i]);
    } 
    index++;
    if(index>4){
    index=0;
  }
  spanColor();
  }



  function prev(){
    lbName.push(lbName[0])
    lbName.shift();
    for(var i=0;i<div_lb.length;i++){
      div_lb[i].setAttribute("class","w_item "+lbName[i]);
    }
    index--;
    if(index<0){
      index=4;
    }
    spanColor();
  }
 var a ;
  // 指示器点击实现功能
  for(var i in spans){
    // console.log(i) 
    spans[i].a=i;
    if( i + 1 - 0){
      // (function(i){
      // console.log(i)
    spans[i].onclick=function(){
      // console.log(this.a);
      var nowIndex =this.a;//i;
      // console.log(nowIndex)
      var offset = nowIndex - index;
      // console.log(offset);
      if(offset == 0){
        return;
      }else if(offset > 0){
        for( var j=0;j < offset; j++){
          lbName.unshift(lbName[4]);
          lbName.pop();
        }
        for(var k in div_lb){
          // console.log(k)
          if( k + 1 -0){
            div_lb[k].setAttribute("class","w_item "+lbName[k]);
          }
        }
      index = nowIndex; 
      spanColor();
      }else if(offset < 0 ){
        for(var j = 0; j > offset; j--){
          lbName.push(lbName[0])
          lbName.shift();
        }
        for(var n in div_lb){
          if(n + 1 - 0){
            div_lb[n].setAttribute("class","w_item "+lbName[n]);
          }
        }
        index = nowIndex;
        spanColor();
      }

    }
    // })(i)
  }
  }

  // food 鼠标移动到$li上自动换图
  $(".food_w").on("mouseenter",".food_class",function(){
    var $li = $(this)
    if(!$li.hasClass("food_class_bg")){
      $li.addClass(" food_class_bg").siblings().removeClass(" food_class_bg")
    }  
  })


  // 主轮播
  var index1=0;
  var as = document.querySelectorAll(".shuffling_span a:not(:last-child)");

  function aColor(){
    for(var i of as){
      // console.log(i)
      i.className=" ";
    }
    as[index1].className +="red"
  }
  aColor();
  var lbDiv=document.querySelectorAll(".shuffling_none")
  var lbN=["shuffling_item1","shuffling_item2","shuffling_item3","shuffling_item4"];

  function rightNext(){
    lbN.unshift(lbN[3]);
    lbN.pop();
    for(var i =0;i<lbDiv.length;i++){
      lbDiv[i].setAttribute("class","shuffling_none "+lbN[i]);
    }
    index1++;
    if(index1>3){
      index1=0;  
    }
  aColor();
  }
  // 按钮点击 下 一张
  $(".index_round_right").click(rightNext);

  function leftPrev(){
    lbN.push(lbN[0]);
    lbN.shift();
    for(var i = 0; i<lbDiv.length;i++){
      lbDiv[i].setAttribute("class","shuffling_none "+lbN[i]);
    }
    index1--
    if(index1<0){
      index1=3;
    }
    aColor();
  }
  // 按钮点击 上 一张
  $(".index_round_left").click(leftPrev);

  // // 自动轮播
  // var timer1=setInterval(rightNext,3000);
  // // 鼠标进入停止轮播
  // $(".index_round").mouseenter(function(){
  //   clearInterval(timer1);
  // })
  // // 鼠标移出自动轮播
  // $(".index_round").mouseleave(function(){
  //   timer1=setInterval(rightNext,3000);
  // })

  for(var i in as){
    // console.log(i)
    var a;
    as[i].a=i;
    if(i +1 - 0 ){
      as[i].onclick=function(){
        var nowIndex = this.a;
        // console.log(nowIndex)
        var offset = nowIndex- index1;
        console.log(offset);
        if(offset==0){
          return;
        }else if(offset>0){
          for(var n=0;n<offset;n++){
            lbN.unshift(lbN[3]);
            lbN.pop();
          }
          for(var m in lbDiv){
            // console.log(m)
            if(m + 1 -0){
              lbDiv[m].setAttribute("class","shuffling_none "+lbN[m]);
            }
          }
          index1 = nowIndex;
          aColor();
        }else if(offset<0){
          for(var n = 0; n>offset;n--){
            lbN.push(lbN[0]);
            lbN.shift();
          }
          for(var m in lbDiv){
            if( m + 1 - 0){
              lbDiv[m].setAttribute("class","shuffling_none "+lbN[m]);
            }
          }
          index1 = nowIndex;
          aColor();
        }
      }
    }
  }

}