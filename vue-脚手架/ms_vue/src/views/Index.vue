<template>
<div>
  <ms-search></ms-search>
  <ms-totop></ms-totop>
  <div class="ms-index">
    <div class="main_w">
      <div class="main"  v-cloak>
        <div class="index_w" @mouseenter="stop" @mouseleave="start">
          <!-- 手动轮播图 -->
          <div class="index_w_main">
            <div class="w_item " :class="active==1?'z_item_1':active==2?'z_item_2':active==3?'z_item_3':active==4?'z_item_4':active==5?'z_item_5':''">
              <h3 class="display display_h ">今日{{item[0].headtitle}}推荐：{{item[0].headline}}</h3>
              <ul class="w_item_ul">
                <li v-for="(p,index) of item.slice(0,3)" :key="index">
                  <a target="_blank" href="#" :title="p.title" class="img">
                    <img :src="p.md" :alt="p.title">
                  </a>
                  <div class="li_div">
                    <h2>
                      <a target="_blank" href="#" :title="p.title">{{p.title}}</a>
                    </h2>
                    <strong>{{p.efficacy}}</strong>
                    <span>
                      <a href="###">{{p.benefits}}</a>
                      <b class="bg_b"></b>
                    </span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="w_item " :class="active==2?'z_item_3':active==3?'z_item_4':active==4?'z_item_5':active==5?'z_item_1':active==1?'z_item_2':''">
              <h3 class="display display_h">今日{{item[3].headtitle}}推荐：{{item[3].headline}}</h3>
              <ul class="w_item_ul">
                <li v-for="(p,index) of item.slice(3,6)" :key="index">
                  <a target="_blank" href="#" :title="p.title" class="img">
                    <img :src="p.md" :alt="p.title">
                  </a>
                  <div class="li_div">
                    <h2>
                      <a target="_blank" href="#" :title="p.title">{{p.title}}</a>
                    </h2>
                    <strong>{{p.efficacy}}</strong>
                    <span>
                      <a href="###">{{p.benefits}}</a>
                      <b class="bg_b"></b>
                    </span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="w_item " :class="active==3?'z_item_5':active==4?'z_item_1':active==5?'z_item_2':active==1?'z_item_3':active==2?'z_item_4':''">
              <h3 class="display display_h">今日{{item[6].headtitle}}推荐：{{item[6].headline}}</h3>
              <ul class="w_item_ul">
                <li v-for="(p,index) of item.slice(6,9)" :key="index">
                  <a target="_blank" href="#" :title="p.title" class="img">
                    <img :src="p.md" :alt="p.title">
                  </a>
                  <div class="li_div">
                    <h2>
                      <a target="_blank" href="#" :title="p.title">{{p.title}}</a>
                    </h2>
                    <strong>{{p.efficacy}}</strong>
                    <span>
                      <a href="###">{{p.benefits}}</a>
                      <b class="bg_b"></b>
                    </span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="w_item " :class="active==4?'z_item_2':active==5?'z_item_3':active==1?'z_item_4':active==2?'z_item_5':active==3?'z_item_1':''">
              <h3 class="display display_h">今日{{item[9].headtitle}}推荐：{{item[9].headline}}</h3>
              <ul class="w_item_ul">
                <li v-for="(p,index) of item.slice(9,12)" :key="index">
                  <a target="_blank" href="#" :title="p.title" class="img">
                    <img :src="p.md" :alt="p.title">
                  </a>
                  <div class="li_div">
                    <h2>
                      <a target="_blank" href="#" :title="p.title">{{p.title}}</a>
                    </h2>
                    <strong>{{p.efficacy}}</strong>
                    <span>
                      <a href="###">{{p.benefits}}</a>
                      <b class="bg_b"></b>
                    </span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="w_item " :class="active==5?'z_item_4':active==1?'z_item_5':active==2?'z_item_1':active==3?'z_item_2':active==4?'z_item_3':''">
              <h3 class="display display_h">今日{{item[12].headtitle}}推荐：{{item[12].headline}}</h3>
              <ul class="w_item_ul">
                <li v-for="(p,index) of item.slice(-3)" :key="index">
                  <a target="_blank" href="#" :title="p.title" class="img">
                    <img :src="p.md" :alt="p.title">
                  </a>
                  <div class="li_div">
                    <h2>
                      <a target="_blank" href="#" :title="p.title">{{p.title}}</a>
                    </h2>
                    <strong>{{p.efficacy}}</strong>
                    <span>
                      <a href="###">{{p.benefits}}</a>
                      <b class="bg_b"></b>
                    </span>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="index_w_left"></div>
          <div class="index_w_right"></div>
          <div class="index_btn_prev" @click="prev"></div>
          <div class="index_btn_next" @click="next"></div>
          <!-- 指示器 -->
          <div class="time_p">
            <div class="time_p_w">
              <span class="timex " :class="active==1?'time_top_red':''" @click="a1">
                <span>早餐时间</span>
              </span>
              <span class="timex " :class="active==5?'time_top_red':''" @click="a2">
                <span>午餐时间</span>
              </span>
              <span class="timex " :class="active==4?'time_top_red':''" @click="a3">
                <span>下午茶时间</span>
              </span>
              <span class="timex " :class="active==3?'time_top_red':''" @click="a4">
                <span>晚餐时间</span>
              </span>
              <span class="timex " :class="active==2?'time_top_red':''" @click="a5">
                <span>夜宵时间</span>
              </span>
            </div>
            <div class="time_left"></div>
            <div class="time_right"></div>
            <span class="time time4">4:00</span>
            <span class="time time10">10:00</span>
            <span class="time time14">14:00</span>
            <span class="time time16">16:00</span>
            <span class="time time21">21:00</span>
            <span class="time time4_">4:00</span>
          </div>
        </div>


        <!-- 每月推荐 -->
        <h3 class="month_intr">
          十二月，适度进补，动静结合
          <span class="more">
            <a href="javascript:;">更多食材 &gt;</a>
          </span>
        </h3>
        <div class="food">
          <ul class="food_w">
            <li class="food_class " :class="activefood==1?'food_class_bg':''" @mouseenter="food1">
              <a href="javascript:;" class="food_c_a">{{food[0].food_title}}</a>
              <div class="a_div">
                <ul class="h">
                  <li v-for="p of food.slice(0,8)" :key="p.iid">
                    <a target="_blank" href="javascript:;">
                      <img :src="p.md" alt="" srcset="">
                      <span class="food_name">
                        <b class="bg_b1"></b>
                        <strong>{{p.pic_title}}</strong>
                      </span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="food_class" :class="activefood==2?'food_class_bg':''" @mouseenter="food2">
              <a href="javascript:;" class="food_c_a">{{food[8].food_title}}</a>
              <div class="a_div">
                <ul class="h">
                  <li v-for="p of food.slice(8,16)" :key="p.iid">
                    <a target="_blank" href="javascript:;">
                      <img :src="p.md" alt="" srcset="">
                      <span class="food_name">
                        <b class="bg_b1"></b>
                        <strong>{{p.pic_title}}</strong>
                      </span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="food_class" :class="activefood==3?'food_class_bg':''" @mouseenter="food3">
              <a href="javascript:;" class="food_c_a">{{food[16].food_title}}</a>
              <div class="a_div">
                <ul class="h">
                  <li v-for="p of food.slice(16,24)" :key="p.iid">
                    <a target="_blank" href="javascript:;">
                      <img :src="p.md" alt="" srcset="">
                      <span class="food_name">
                        <b class="bg_b1"></b>
                        <strong>{{p.pic_title}}</strong>
                      </span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
            <li class="food_class" :class="activefood==4?'food_class_bg':''" @mouseenter="food4">
              <a href="javascript:;" class="food_c_a">{{food[24].food_title}}</a>
              <div class="a_div">
                <ul class="h">
                  <li v-for="p of food.slice(-8)" :key="p.iid">
                    <a target="_blank" href="javascript:;">
                      <img :src="p.md" alt="" srcset="">
                      <span class="food_name">
                        <b class="bg_b1"></b>
                        <strong>{{p.pic_title}}</strong>
                      </span>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>


        <!-- 轮播图 -->
        <div class="index_round" @mouseleave="start1" @mouseenter="stop1">
          <div class="index_round_left" @click="left"></div> 
          <div class="index_round_right" @click="right"></div> 
          <div class="shuffling">
            <span class="shuffling_span">
              <a href="javascript:;" :class="activeround==1?'red':''">最新</a>
              <span> | 最热：</span>
              <a href="javascript:;" :class="activeround==4?'red':''">一小时</a>
              <a href="javascript:;" :class="activeround==3?'red':''">今日</a>
              <a href="javascript:;" :class="activeround==2?'red':''">七天</a>
              <a target="_blank" href="javascript:;">更多菜谱 &gt;</a>
            </span>
            <div class="shuffling_none" :class="activeround==1?'shuffling_item1':activeround==2?'shuffling_item2':activeround==3?'shuffling_item3':activeround==4?'shuffling_item4':''">
              <h3 class="month_intr">{{res[0].roundtitle}}</h3>
              <div class="round">
               <div class="round_class" v-for="(p,index) of res.slice(0,7)" :key="index" @mouseenter="move(index)" @mouseleave="sp(index)">
                  <a target="_blank" href="javascript:;" :title="p.rname" class="big">
                    <img class="img" :src="p.pic" :alt="p.rname" >
                    <div class="r_c_w">
                      <div class="i" :class=" num == index ? 'trans' :'sp'">
                        <div class="c1">
                          <strong>{{p.rname}}</strong>
                          <span>{{p.contents}} 评论  {{p.point}} 人气</span>
                          <em>{{p.author}}</em>
                        </div>
                        <div class="c2">
                          <ul>
                            <li class="li1">{{p.steps}}</li>
                            <li class="li2">{{p.practice}}</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="round_class">
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
                </div> 
              </div>
            </div>
            <div class="shuffling_none" :class="activeround==1?'shuffling_item2':activeround==2?'shuffling_item3':activeround==3?'shuffling_item4':activeround==4?'shuffling_item1':''">
              <h3 class="month_intr">{{res[7].roundtitle}}</h3>
              <div class="round">
               <div class="round_class" v-for="(p,index) of res.slice(7,14)" :key="index"  @mouseenter="move(index)" @mouseleave="sp(index)">
                  <a target="_blank" href="javascript:;" :title="p.rname" class="big">
                    <img class="img" :src="p.pic" :alt="p.rname" >
                    <div class="r_c_w">
                      <div class="i" :class=" num == index ? 'trans'  :'sp'">
                        <div class="c1">
                          <strong>{{p.rname}}</strong>
                          <span>{{p.contents}} 评论  {{p.point}} 人气</span>
                          <em>{{p.author}}</em>
                        </div>
                        <div class="c2">
                          <ul>
                            <li class="li1">{{p.steps}}</li>
                            <li class="li2">{{p.practice}}</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="round_class">
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
                </div> 
              </div>
            </div>
            <div class="shuffling_none" :class="activeround==1?'shuffling_item3':activeround==2?'shuffling_item4':activeround==3?'shuffling_item1':activeround==4?'shuffling_item2':''">
              <h3 class="month_intr">{{res[14].roundtitle}}</h3>
              <div class="round">
               <div class="round_class" v-for="(p,index) of res.slice(14,21)" :key="index"  @mouseenter="move(index)" @mouseleave="sp(index)">
                  <a target="_blank" href="javascript:;" :title="p.rname" class="big">
                    <img class="img" :src="p.pic" :alt="p.rname" >
                    <div class="r_c_w">
                      <div class="i" :class=" num == index ? 'trans' :'sp'">
                        <div class="c1">
                          <strong>{{p.rname}}</strong>
                          <span>{{p.contents}} 评论  {{p.point}} 人气</span>
                          <em>{{p.author}}</em>
                        </div>
                        <div class="c2">
                          <ul>
                            <li class="li1">{{p.steps}}</li>
                            <li class="li2">{{p.practice}}</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="round_class">
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
                </div> 
              </div>
            </div>
            <div class="shuffling_none" :class="activeround==1?'shuffling_item4':activeround==2?'shuffling_item1':activeround==3?'shuffling_item2':activeround==4?'shuffling_item3':''">
              <h3 class="month_intr">{{res[21].roundtitle}}</h3>
              <div class="round">
               <div class="round_class" v-for="(p,index) of res.slice(-7)" :key="index"  @mouseenter="move(index)" @mouseleave="sp(index)">
                  <a target="_blank" href="javascript:;" :title="p.rname" class="big">
                    <img class="img" :src="p.pic" :alt="p.rname" >
                    <div class="r_c_w">
                      <div class="i" :class=" num == index ? 'trans'  :'sp'">
                        <div class="c1">
                          <strong>{{p.rname}}</strong>
                          <span>{{p.contents}} 评论  {{p.point}} 人气</span>
                          <em>{{p.author}}</em>
                        </div>
                        <div class="c2">
                          <ul>
                            <li class="li1">{{p.steps}}</li>
                            <li class="li2">{{p.practice}}</li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </a>
                </div>
                <div class="round_class">
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
                </div> 
              </div>
            </div>
          </div>
        </div>

        <!-- 健康新闻 -->
        <h3 class="health_intr">
            健康新闻
            <span class="more">
              <a target="_blank" href="#">更多健康咨询 &gt;</a>
            </span>
        </h3>
        <div class="index_health">
          <div class="health_div">
            <div class="health_div_a mb-20">
              <h2>
                <a target="_blank" href="javascript:;">{{health[0].subtitle}}</a>
                <b></b>
              </h2>
              <ul class="health_item">
                <li :class="hov1==1?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[0].md">
                  </a>
                  <h3 @mouseenter="hover1">
                    <a target="_blank" href="javascript:;">{{health[0].healthtitle}}</a>
                  </h3>
                </li>
                <li :class="hov1==2?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[1].md">
                  </a>
                  <h3 @mouseenter="hover2">
                    <a target="_blank" href="javascript:;">{{health[1].healthtitle}}</a>
                  </h3>
                </li>
                <li :class="hov1==3?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[2].md">
                  </a>
                  <h3 @mouseenter="hover3">
                    <a target="_blank" href="javascript:;">{{health[2].healthtitle}}</a>
                  </h3>
                </li>
              </ul>
            </div>
            <div class="health_div_a mb-20 mr-0">
              <h2>
                <a target="_blank" href="javascript:;">{{health[3].subtitle}}</a>
                <b></b>
              </h2>
              <ul class="health_item">
                <li :class="hov2==4?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[3].md">
                  </a>
                  <h3 @mouseenter="hover4">
                    <a target="_blank" href="javascript:;">{{health[3].healthtitle}}</a>
                  </h3>
                </li>
                <li :class="hov2==5?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[4].md">
                  </a>
                  <h3 @mouseenter="hover5">
                    <a target="_blank" href="javascript:;">{{health[4].healthtitle}}</a>
                  </h3>
                </li>
                <li :class="hov2==6?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[5].md">
                  </a>
                  <h3 @mouseenter="hover6">
                    <a target="_blank" href="javascript:;">{{health[5].healthtitle}}</a>
                  </h3>
                </li>
              </ul>
            </div>
            <div class="health_div_a mb-0">
              <h2>
                <a target="_blank" href="javascript:;">{{health[6].subtitle}}</a>
                <b></b>
              </h2>
              <ul class="health_item">
                <li :class="hov3==7?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[6].md">
                  </a>
                  <h3 @mouseenter="hover7">
                    <a target="_blank" href="javascript:;">{{health[6].healthtitle}}</a>
                  </h3>
                </li>
                <li :class="hov3==8?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[7].md">
                  </a>
                  <h3 @mouseenter="hover8">
                    <a target="_blank" href="javascript:;">{{health[7].healthtitle}}</a>
                  </h3>
                </li>
                <li :class="hov3==9?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[8].md">
                  </a>
                  <h3 @mouseenter="hover9">
                    <a target="_blank" href="javascript:;">{{health[8].healthtitle}}</a>
                  </h3>
                </li>
              </ul>
            </div>
            <div class="health_div_a mr-0 mb-0">
              <h2>
                <a target="_blank" href="javascript:;">{{health[9].subtitle}}</a>
                <b></b>
              </h2>
              <ul class="health_item">
                <li :class="hov4==10?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[9].md">
                  </a>
                  <h3 @mouseenter="hover10">
                    <a target="_blank" href="javascript:;">{{health[9].healthtitle}}</a>
                  </h3>
                </li>
                <li :class="hov4==11?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[10].md">
                  </a>
                  <h3 @mouseenter="hover11">
                    <a target="_blank" href="javascript:;">{{health[10].healthtitle}}</a>
                  </h3>
                </li>
                <li :class="hov4==12?'item_height':''">
                  <a target="_blank" href="javascript:;" class="imgs">
                    <img :src="health[11].md">
                  </a>
                  <h3 @mouseenter="hover12">
                    <a target="_blank" href="javascript:;">{{health[11].healthtitle}}</a>
                  </h3>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</template>

<script>
  export default {
    data() {
      return {
        item:[
          {headtitle:''},{headtitle:''},{headtitle:''},{headtitle:''},
          {headtitle:''},{headtitle:''},{headtitle:''},{headtitle:''},
          {headtitle:''},{headtitle:''},{headtitle:''},{headtitle:''},
          {headtitle:''}
        ],
        food:[
          {food_title:''},{food_title:''},{food_title:''},{food_title:''},
          {food_title:''},{food_title:''},{food_title:''},{food_title:''},
          {food_title:''},{food_title:''},{food_title:''},{food_title:''},
          {food_title:''},{food_title:''},{food_title:''},{food_title:''},
          {food_title:''},{food_title:''},{food_title:''},{food_title:''},
          {food_title:''},{food_title:''},{food_title:''},{food_title:''},
          {food_title:''},
        ],
        res:[
          {roundtitle:""}, {roundtitle:""}, {roundtitle:""}, {roundtitle:""},
          {roundtitle:""}, {roundtitle:""}, {roundtitle:""}, {roundtitle:""},
          {roundtitle:""}, {roundtitle:""}, {roundtitle:""}, {roundtitle:""},
          {roundtitle:""}, {roundtitle:""}, {roundtitle:""}, {roundtitle:""},
          {roundtitle:""}, {roundtitle:""}, {roundtitle:""}, {roundtitle:""},
          {roundtitle:""}, {roundtitle:""}
        ],
        health:[
          {subtitle:"",md:""},{subtitle:"",md:""},{subtitle:"",md:""},{subtitle:"",md:""},{subtitle:"",md:""},{subtitle:"",md:""},{subtitle:"",md:""},{subtitle:"",md:""},{subtitle:"",md:""},
          {subtitle:"",md:""},{subtitle:"",md:""},{subtitle:"",md:""},
        ],
        active:1,
        activefood:1,
        activeround:1,
        hov1:1,
        hov2:4,
        hov3:7,
        hov4:10,
        num:null,
        timer:null,
        timer1:null,
      }
    },
    methods: {
      prev(){
        this.active++;
         if(this.active>5){
           this.active=1;
         }
      },
      next(){
        this.active--;
         if(this.active<1){
           this.active=5;
         }
      },
      left(){
        this.activeround++;
        if(this.activeround>4){
          this.activeround=1;
        }
      },
      right(){
        this.activeround--;
        if(this.activeround<1){
          this.activeround=4;
        }
      },
      autoPlay(){
        this.timer = setInterval(this.next,3000)
      },
      autoPlay1(){
        this.timer1 = setInterval(this.right,3000)
      },
      stop(){
       this.timer = clearInterval(this.timer)
      },
      stop1(){
       this.timer1 = clearInterval(this.timer1)
      },
      start(){
       this.timer = setInterval(this.next,3000)
      },
      start1(){
       this.timer1 = setInterval(this.right,3000)
      },
      a1(){
        this.active = 1;
      },
      a2(){
        this.active = 5;
      },
      a3(){
        this.active = 4;
      },
      a4(){
        this.active = 3;
      },
      a5(){
        this.active = 2;
      },
      food1(){
        this.activefood = 1;
      },
      food2(){
        this.activefood = 2;
      },
      food3(){
        this.activefood = 3;
      },
      food4(){
        this.activefood = 4;
      },
      move(index){
        this.num = index;
      },
      sp(index){
        this.num = null;
      },
      hover1(){
        this.hov1=1;
      },
      hover2(){
        this.hov1=2;
      },
      hover3(){
        this.hov1=3;
      },
      hover4(){
        this.hov2=4;
      },
      hover5(){
        this.hov2=5;
      },
      hover6(){
        this.hov2=6;
      },
      hover7(){
        this.hov3=7;
      },
      hover8(){
        this.hov3=8;
      },
      hover9(){
        this.hov3=9;
      },
      hover10(){
        this.hov4=10;
      },
      hover11(){
        this.hov4=11;
      },
      hover12(){
        this.hov4=12;
      },
      
    },
    created() {
      this.autoPlay();
      this.autoPlay1();
      this.axios.get("http://127.0.0.1:8000/index/item").then(res=>{
        this.item = res.data; 
        // console.log(this.item);
      });
      this.axios.get("http://127.0.0.1:8000/index/food").then(res=>{
        this.food = res.data;
        // console.log(this.food)
      });
     this.axios.get("http://127.0.0.1:8000/index/round").then(res=>{
        this.res = res.data;
        // console.log(res.data)
      });
      this.axios.get("http://127.0.0.1:8000/index/health").then(res=>{
        this.health = res.data;
        // console.log(this.health)
      })
    } 
  }
</script>
<style scoped>
  
/* 轮播定位时间 */
*{margin: 0;padding: 0}
ul{
  list-style: none;
}
a{
  text-decoration: none
}
.main{
  width: 990px;
  margin: 0 auto;
}
.index_w{
  width: 990px;
  height: 382px;
  margin: 0 auto;
  position: relative;
  margin-top: 120px;
}
.index_w_main{
  width: 100%;
  position: absolute;
  height: 330px;
  left: 0px;
  
}
.w_item{
  transition: left .5s ;
  width: 990px;
  height: 330px;
  position: absolute;
  z-index: 10;
}
.z_item_1{
 left: 0px;
}
.z_item_2{
 left:990px;
}
.z_item_3{
 left:1980px;
 transition: none ;
}
.z_item_4{
 left: -1980px;
 transition: none ;
}
.z_item_5{
 left:-990px;
}
.display{
  height: 120px;
  line-height: 120px;
  font-size: 24px;
  color: #222;
  text-align: center;
  font-family: Microsoft Yahei;
  position: relative;
  display: none;
}
/* h3 隐藏 */
.display_h{
  position: absolute;
  top:-120px;
  width: 990px;
  z-index: 200;
  display: none;
}
/* h3 显示 */
/* .z_item_dis{
  display: block;
} */
.z_item_1 .display{
  display: block;
}
.w_item ul li{
  width: 330px;
  height: 330px;
  overflow: hidden;
  float: left;
}
.w_item ul li a.img{
  width: 330px;
  height: 330px;
  display: block;
}
.w_item ul li a.img img{
  width: 330px;
  height: 330px;
  display: block;
}
.li_div{
  position: absolute;
  width: 330px;
  height: 78px;
  bottom: 0px;
  background: url(../../public/img/section/z-item/white80.png) repeat;

}
.li_div strong{
  font-size: 12px;
  color: #666;
  padding-left: 20px;
  line-height: 18px;
}
.li_div span{
  height: 30px;
  line-height: 28px;
  background: #60a531;
  padding: 0px 14px;
  display: inline-block;
  position: absolute;
  top: -6px;
  right: 10px;
}
.li_div span a{
  font-size: 12px;
  color: #fff;
}
.li_div span a:hover{
  text-decoration: underline;
}
.li_div h2{
  height: 36px;
  line-height: 36px;
  padding-top: 12px;
  text-indent: 20px;
}
.li_div h2 a{
  color: #333;
  font-size: 24px;
  font-weight: normal;
  font-family: Microsoft Yahei;
}
.li_div h2 a:hover{
  color: #ff3232;
  text-decoration: underline;
}
.bg_b{
  display: block;
  width: 6px;
  height: 6px;
  overflow: hidden;
  background: url(../../public/img/section/bg_b.png) 0px 0px no-repeat;
  position: absolute;
  right: -6px;
  bottom: 24px;
}
/* 左右两边半透明 */
.index_w_left{
  width: 990px;
  height: 330px;
  position: absolute;
  left: -990px;
  top: 0px;
  background: #fff;
  opacity: 0.7;
  z-index: 100;
}
.index_w_right{
  width: 990px;
  height: 330px;
  position: absolute;
  right: -990px;
  top: 0px;
  background: #fff;
  opacity: 0.7;
  z-index: 100;
}
/* 左右箭头 */
.index_btn_prev{
  width: 173px;
  height: 73px;
  position: absolute;
  left: -60px;
  top: 128px;
  background: url(../../public/img/section/z-item/slide_bg.png) no-repeat;
  background-position:0px 6px;
  z-index: 500;
}
.index_btn_next{
  width: 173px;
  height: 73px;
  position: absolute;
  right: -60px;
  top: 128px;
  background: url(../../public/img/section/z-item/slide_bg.png) no-repeat;
  background-position: -174px 6px;
  z-index: 500;
}
/* 时间条 */
.time_p{
  width: 100%;
  height: 52px;
  position: absolute;
  top:330px;
  left: 0px;
}
.time_p_w{
  width: 990px;
  height: 52px;
  margin: 0px auto;
  position: relative;
  overflow: hidden;
  background: #fff url(../../public/img/section/z-item/time.gif) 0px 0px repeat-x;
}
/* 时间间隔+字体+border_top */
.timex{
  width: 198px;
  height: 48px;
  line-height: 48px;
  color: #999;
  font-size: 14px;
  text-align: center;
  border-top: 4px solid#aaa;
  display: block;
  float: left;
}
.timex span{
  display: none;
  font-size: 14px;
}
.time_top_red{
  color: #ff6363;
  border-top: 4px solid #ff6363;
  background: #f9f9f9 url(../../public/img/section/z-item/timex.gif) 0px -4px no-repeat;
  font-weight: bold;
}
.time_top_red span{
  display: block;
}  
/* 左右时间隐藏 */
.time_left{
  width: 1000px;
  position: absolute;
  left: -1000px;
  top: 0px;
  height: 48px;
  border-top: 4px solid #aaa;
  background:  #fff url(../../public/img/section/z-item/time.gif) right -4px repeat-x;
}
.time_right{
  width: 1000px;
  position: absolute;
  right: -1000px;
  top: 0px;
  height: 48px;
  border-top: 4px solid #aaa;
  background:  #fff url(../../public/img/section/z-item/time.gif) 0px -4px repeat-x;
}
/* span  时间标 */
.time{
  width: 60px;
  height: 48px;
  line-height: 48px;
  font-size: 18px;
  color: #aaa;
  font-family: Arial;
  position: absolute;
  top: 4px;
  display: block;
}
.time4{
  left: -11px;
}
.time10{
  left: 176px;
}
.time14{
  left: 375px;
}
.time16{
  left: 572px;
}
.time21{
  left: 770px;
}
.time4_{
  left: 978px;
}
/* 每月标题,健康 */
.month_intr,.health_intr{
  height: 120px;
  line-height: 120px;
  color: #222;
  font-size: 24px;
  text-align: center;
  font-family: Microsoft Yahei;
  font-weight: normal;
  position: relative;
  display: block;
}
.more{
  position: absolute;
  top: 36px;
  right: 0px;
  font-size: 12px;
  font-family: 宋体;
  color: #666;
  height: 48px;
  line-height: 48px;
}
.more a{
  color: #666;
}
.more a:hover{
  color: #ff3232;
  text-decoration: underline;
}
/* food */
.food{
  width: 990px;
  height: 193px;
  background: #fff;
  position: relative;
}
.food_w{
  height: 60px;
  padding: 0px 20px;
  border-bottom: 0px solid #eee;
  list-style: none;
}
.food_class{
  float: left;
  width: 58px;
  height: 60px;
  line-height: 60px;
  color: #333;
  font-size: 14px;
  display: inline-block;
}
.food_class_bg{
  height: 30px;
  margin-top: 15px;
  background: #ff3232;
}
.food_c_a{
  float: left;
  color: #666;
  font-size: 14px;
  font-family: Arial;
  display: inline-block;
  vertical-align: top;
  line-height: 60px;
  padding: 0px 15px;
}
.food_class_bg .food_c_a{
  color: #fff;
  height: 30px;
  line-height: 30px;
}
.food_class_bg .a_div{
  display: block;
}
.a_div{
  width: 970px;
  height: 117px;
  background: #fff;
  position: absolute;
  left: 0px;
  top: 60px;
  padding: 0px 0px 16px 20px;
  display: none;
}
.h{
  height: 117px;
}
.h li a{
  display: block;
  width: 117px;
  height: 117px;
  float: left;
  margin-right: 2px;
  position: relative;
  overflow: hidden;
}
.h li a:hover .food_name>strong{
  color: #ff3232;
  text-decoration: underline;
}
.h a img{
  display: block;
  width: 117px;
  height: 117px;
}
.food_name{
  width: 117px;
  height: 28px;
  line-height: 28px;
  background: url(../../public/img/section/food/white70.png) repeat;
  position: absolute;
  left: 0px;
  top: 89px;
  color: #333;
  display: inline-block;
}
.bg_b1{
  width: 10px;
  height: 10px;
  display: inline-block;
  background: #999;
  margin: 9px;
  overflow: hidden;
}
.food_name strong{
  display: inline-block;
  font-size: 12px;
  font-weight: normal;
  color: #333;
  vertical-align: top;
}
/*
*
*
*
*
*
*
*
*
**
轮播
 */
 .index_round{
   position: relative;
   width: 990px;
   height: 804px;
   margin: 0px auto;
   background: url(../../public/img/section/round/blank.gif) 0px 0px repeat;
 }
 .index_round_left{
   position: absolute;
   left: -130px;
   top: 396px;
   height: 130px;
   width: 130px;
   background: url(../../public/img/section/round/round_rrow.gif) 0px 0px no-repeat;
   z-index: 500;
   cursor: pointer;
 }
 .index_round_left:hover{
  background-position: -130px 0px;
 }
 .index_round_right{
   position: absolute;
   right: -130px;
   top: 396px;
   height: 130px;
   width: 130px;
   background: url(../../public/img/section/round/round_rrow.gif) 0px -130px no-repeat;
   z-index: 500;
   cursor: pointer;
 }
 .index_round_right:hover{
   background-position: -130px -130px;
 }
 .shuffling{
   position: relative;
   width: 988px;
   height: 804px;
   margin: 0 auto;
   overflow: hidden;
   background: url(../../public/img/section/round/blank.gif) 0px 0px repeat;
 }
 .shuffling_none{
  width: 988px;
  height: 804px;
  margin: 0 auto;
  overflow: hidden;
  position: absolute;
  transition: left .5s;
 }
 .shuffling_item1{
   left: 0px;
 }
 .shuffling_item2{
   left: 988px;  
 }
 .shuffling_item3{
   left: 1976px;
   transition:none;
 }
 .shuffling_item4{
   left: -988px;  
   transition: .5s;
 }
 .round{
   position: relative;
   width: 988px;
   height: 704px;
   display: flex;
   justify-content: space-between;
   flex-wrap: wrap;
 }
 .round_class{
  width:232px;
  height: 332px;
  background: #fff; 
  position: relative;
 }
 .shuffling span.shuffling_span a.red{
   color: #ff3232;
 }
.shuffling span.shuffling_span{
  height: 48px;
  line-height: 48px;
  color: #666;
  font-size: 12px;
  font-family: 宋体;
  display: block;
  position: absolute;
  top: 36px;
  right: 0px;
  z-index: 1;
}
.shuffling span.shuffling_span a{
  color: #666;
}
.shuffling span.shuffling_span a:hover{
  color: #ff3232;
  text-decoration: underline;
}
/* 轮播每个小块 */
.big{
  display: block;
  width: 232px;
  height: 332px;
  font-size: 12px;
}
.big .img{
  display: block;
  width: 232px;
  height: 232px;
}
.r_c_w{
  width: 232px;
  height: 100px;
  overflow: hidden;
  vertical-align: baseline;
}
.i{
  width: 232px;
  height: 200px;
  margin-top: 0px;
}
.trans{
  transition: .6s;
  margin-top:-100px;
}
.sp{
  transition: .6s;
  margin-top: 0px;
}
.c1{
  width: 232px;
  height: 100px;
  overflow: hidden;
}
.c1 strong{
  display: block;
  height: 24px;
  line-height: 24px;
  padding: 11px 14px 0px;
  font-size: 14px;
  color: #333;
  font-weight: bold;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.c1 span{
  display: block;
  height: 26px;
  line-height: 26px;
  padding: 0px 14px 0px;
  font-size: 12px;
  color: #999;
}
.c1 em{
  display: block;
  height: 23px;
  line-height: 23px;
  padding: 0px 14px 0px;
  font-size: 12px;
  color: #ff3232;
  font-style: normal;
  font-weight: normal;
}
.c2{
  width: 232px;
  height: 100px;
  overflow: hidden;
  background: #eee;
}
.c2 ul{
  padding: 20px 0px 15px 14px;
  list-style: none;
}
.c2 ul li{
  width: 208px;
  height: 32px;
  background: url(../../public/img/section/round/list_style1_icons.png) no-repeat;
  text-indent: 32px;
  line-height: 32px;
  color: #666;
  font-size: 14px;
}
.c2 ul li.li1{
  background-position: -9px -126px;
}
.c2 ul li.li2{
  background-position: -9px -44px;
}

.round_list_more{
  background: #fff;
  height: 332px;
}
.round_list_more h3{
  height: 50px;
  line-height: 50px;
  color: #333;
  font-size: 14px;
  text-indent: 14px;
  border-bottom: 1px solid #ddd;
  background: #fff;
  font-weight: normal;
}
.round_list_more ul{
  list-style: none;
  padding: 14px;
  font-size: 12px;
}
.round_list_more ul li{
  display: inline-block;
  vertical-align: top;
  height: 30px;
  font-size: 14px;
  margin-right: 10px;
  margin-bottom: 10px;
}
.round_list_more ul li a{
  color: #666;
  display: inline-block;
  vertical-align: top;
  padding: 0px 10px;
  background: #fcfcfc;
  border: 1px solid #ddd;
  height: 28px;
  line-height: 28px;
}
.round_list_more ul li a:hover{
  background: #ff3232;
  color: #fff;
  border: 1px solid #e90808;
}
.round_list_more ul li a.host{
  background: #ff3232;
  color: #fff;
  border: 1px solid #e90808;
}
.round_list_more ul li a.host:hover{
  background: #e90808;
}
/* 小标签 */
.xb{
  display: inline-block;
  vertical-align: top;
  height: 38px;
  position:absolute;
  top:12px;
  right: -6px;
  background: url(../../public/img/section/round/gxarrow.png) right 32px no-repeat;
  font-style: normal;
  font-weight: normal;
}
.xb span{
  display: inline-block;
  vertical-align: top;
  height: 32px ;
  padding: 0px 12px ;
  background: #60a531;
  line-height: 32px;
  color: #fff;
  font-size: 14px;
  box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.5)
}

 /* 健康咨询 */
 .index_health{
   width: 990px;
   font-size: 12px;
 }
 .health_div{
   float: left;
   width: 990px;
   font-size: 12px;
 }
 .health_div_a{
   position: relative;
   float: left;
   width: 485px;
   margin-right: 20px;
   background: #fff;
 }
 .mb-20{
   margin-bottom: 20px;
 }
 .mr-0{
   margin-right: 0px;
 }
 .mb-0{
   margin-bottom: 0px;
 }
 .health_div_a h2{
   height: 30px;
   line-height: 27px;
   display: inline-block;
   padding: 0px 14px;
   color: #fff;
   background: #60a531;
   vertical-align: top;
   position: absolute;
   top: -6px;
   right: 10px;
   z-index: 100;
 }
 .health_div_a h2 a{
   font-size: 12px;
   color: #fff;
 }
 .health_div_a h2 a:hover{
   text-decoration: underline;
 }
 .health_div_a h2 b{
  width: 6px;
  height: 6px;
  position: absolute;
  top: 0px;
  right: -6px;
  display: block;
  overflow: hidden;
  background: url(../../public/img/section/bg_b.png) 0px 0px no-repeat;
 }
 /* ul部分 */
 .health_div_a ul{
   position: relative;
   padding-left: 160px;
 }
 .item_height{
   height: 59px;
 }
 .health_item li{
   font-size: 12px;
   height: 49px;
   border-bottom: 1px solid #eee;
 }

 .health_div_a ul li a.imgs{
    width: 160px;
    height: 160px;
    position: absolute;
    left: 0px;
    top: 0px;
    display: none;
 }
 .health_div_a ul li.item_height a.imgs{
   display: block;
 }
 .health_div_a ul li a.imgs img{
  display: block;
  height: 150px;
  width: 160px;
 }
 .health_div_a ul li.item_height h3{
  height: 59px;
  line-height: 50px;
  font-size: 15px;
  color: #333;
  font-family: Microsoft Yahei;
  font-weight: bold;
 }
 .health_div_a ul li h3{
  height: 49px;
  line-height: 49px;
  font-size: 13px;
  color: #333;
  padding-left: 14px;
  font-weight: normal;
}
 .health_div_a ul li h3 a{
   color: #666;
 }
 .health_div_a ul li.item_height h3 a{
   color: #333;
 }
.health_div_a ul li h3 a:hover{
  color: #ff3232;
  text-decoration: underline;
}
 
</style>
