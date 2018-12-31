<template>
  <div id="ms-header">
    <header>
    <div class="container">
      <div class="content">
        <div class="logo">
          <a href=""><img src="img/header/logo.png" alt="" srcset=""></a> 
        </div>
        <div class="search" v-cloak>
          <input type="text" placeholder="请输入菜谱/食材/菜单/作者" class="input_txt" v-model="kwords" @keyup.13="search">
          <button class="input_btn" @click="handlSearch">搜索</button>
        </div>
        <div class="login" id="signout" v-if="!this.$store.state.islogin">
          <a href="#">
            <label><img src="img/header/qq.png" alt="" srcset="">QQ登录</label>
          </a>
          <a href="#">
            <label><img src="img/header/wb.png" alt="" srcset="">微博登录</label>
          </a>
          <router-link @click.native="li0" to="/regist">注册</router-link>
          <router-link @click.native="li0" to="/login" >登录</router-link>
        </div>
        <div class="login" id="signin" v-else >
          <div class="userinfo">
            <div class="userinfo_w" @mouseenter="tan_chu1" @mouseleave="tan_me1">
              <a href="javascript:;" class="avatar">
                <img src="img/header/xy.jpg" alt="" srcset="">
              </a>
              <a href="javascript:;" class="outer">{{this.$store.state.uname}}</a>
              <div class="top_userinfo_more" :style="{display:dis1}">
                <div class="u">
                  <a href="javascript:;" class="imga">
                    <img src="img/header/xy.jpg" alt="">
                  </a>
                  <div class="n">
                    <a href="javascript:;">{{this.$store.state.uname}}</a>
                    <a href="javascript:;" target="_blank" class="v"></a>
                    <span class="l">新人</span>
                  </div>
                </div>
                  <ul>
                    <li>
                      <a href="javascript:;" class="redbtn">发布菜谱</a>
                      <a href="javascript:;" class="greybtn">发布话题</a>
                      <a href="javascript:;" class="greybtn" @click="tan_chu2">发表图文(400积分)</a>
                    </li>
                    <li>
                      <a href="javascript:;" class="linkk">我的美食空间</a>
                    </li>
                    <li>
                      <a href="javascript:;" class="linkk">我的积分成长</a>
                    </li>
                    <li>
                      <a href="javascript:;" class="linkk" @click="signout">退出登录</a>
                    </li>
                  </ul>
              </div>
            </div>
            <a href="javascript:;" class="outer">收藏</a>
            <div class="mes">
              <a href="javascript:;" class="outer">消息</a>
              <div class="topbar_mesbox" style="display:none"></div>
            </div>
            <div class="dr_getmission_box1" :style="{display:dis2}">
              <div class="dr_getmission_box_c1">
                <div class="topbar">发表图文</div>
                <div class="info">
                  <strong class="t">任务标题：发布图文</strong>
                  <span>领取任务消耗积分：0</span>
                  <span>您的现有积分：24</span>
                  <span>完成任务奖励：400积分</span>
                </div>
                <div class="addrbox">
                  <span class="t">确认联系方式</span>
                  <div class="addrinputw1">
                    <span><em>* </em>姓名：</span>
                    <input type="text"  name="real_name" value="">
                  </div>
                  <div class="addrinputw1">	
                    <span><em>* </em>电话：</span>	
                    <input type="text"  name="mobile" value="">
                  </div>
                  <div class="addrinputw1">
                    <span><em>* </em>QQ：</span>	
                    <input type="text"  name="qq" value="">
                  </div>
                  <div class="addrinputw1">
                    <span><em>* </em>微信号：</span>
                    <input type="text" name="weixin" value="">
                  </div>
                  <div class="addrinputw1 addrinputw_l">	
                    <span><em>* </em>详细地址：</span>	
                    <input type="text"  name="address" value="">
                  </div>
                  <div class="addrsubmitw">
                    <a href="javascript:;" class="exit" @click="tan_me2">取消</a>
                    <a href="javascript;" class="submit">提交</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="qd">
              <a href="javascript:;" class="outer" @mouseenter="tan_chu3" >签到</a>
              <div class="qdbox" :style="{display:dis3}" @mouseleave="tan_me3">
                <div class="qdbtn_w">
                  当前积分：
                  <strong>22</strong>
                  分
                  <span class="sign_in">
                    <a href="javascript:;" @click="Sign" >{{sign}}</a>
                  </span>
                </div>
                <div class="rili_w">
                  <div class="nowmon">
                    <em>2018年12月</em>
                  </div>
                  <div class="weeknum">
                    <em>日</em>
                    <em>一</em>
                    <em>二</em>
                    <em>三</em>
                    <em>四</em>
                    <em>五</em>
                    <em>六</em>
                  </div>
                  <ul class="rili">
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                    <li>1</li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                    <li>5</li>
                    <li>6</li>
                    <li>7</li>
                    <li>8</li>
                    <li>9</li>
                    <li>10</li>
                    <li>11</li>
                    <li>12</li>
                    <li>13</li>
                    <li>14</li>
                    <li>15</li>
                    <li>16</li>
                    <li>17</li>
                    <li>18</li>
                    <li>19</li>
                    <li>20</li>
                    <li>21</li>
                    <li>22</li>
                    <li class="dao">23</li>
                    <li class="dao">24</li>
                    <li class="today todaydao">25</li>
                    <li>26</li>
                    <li>27</li>
                    <li>28</li>
                    <li>29</li>
                    <li>30</li>
                    <li>31</li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                    <li>&nbsp;</li>
                  </ul>
                </div>
                <dl class="qdjfjs">
                  <dt>已连续
                    <strong>0</strong>
                    天,今天签到可获得
                    <strong>2</strong>
                    积分。
                  </dt>
                  <dd>
			              <div class="t">
                      <span>连续签到</span>
                      <span>积分</span>
                    </div>
			              <div class="c">
							        <span>2018-12-24</span>
                      <span>2积分</span>
					          </div>
		    	          <a target="_blank" href="javascript:;" class="more">更多获取积分的方法 &gt;</a>
		              </dd>
                </dl>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="nav">
      <ul class="main_nav">
        <li class="strong" @click="li1">
          <router-link to="/index">
            <strong :class="show==1?'border_b_red':''">首页</strong>
          </router-link> 
        </li>
        <li class="strong" @click="li2" @mouseenter="block1" @mouseleave="none1">
          <a href="#">
            <strong :class="show==2?'border_b_red':''">菜谱大全</strong>
          </a>
          <div class="nav_first" :style="{display:dis4}">
            <div class="first_a">
              <a href="#">家常菜谱</a>
              <ul class="first_ul">
                <li><a href="#">家常菜</a></li>
                <li><a href="#">凉菜</a></li>
                <li><a href="#">素食</a></li>
                <li><a href="#">晚餐</a></li>
                <li><a href="#">私家菜</a></li>
                <li><a href="#">热菜</a></li>
                <li><a href="#">海鲜</a></li>
                <li><a href="#">孕妇</a></li>
                <li><a href="#">早餐</a></li>
                <li><a href="#">午餐</a></li>
                <li><a href="#">甜品点心</a></li>
                <li><a href="#">汤粥</a></li>
                <li><a href="#">宝宝食谱-婴儿食谱</a></li>
                <li><a href="#">糕点主食</a></li>
                <li><a href="#">微波炉</a></li>
              </ul>
            </div>
            <div class="first_b">
              <a href="#">中华菜系</a>
              <ul class="first_ul">
                <li><a href="#">川菜</a></li>
                <li><a href="#">粤菜</a></li>
                <li><a href="#">东北菜</a></li>
                <li><a href="#">湘菜</a></li>
                <li><a href="#">鲁菜</a></li>
                <li><a href="#">浙菜</a></li>
                <li><a href="#">湖北菜</a></li>
                <li><a href="#">清真菜</a></li>
              </ul>
            </div>
            <div class="first_b first_c">
              <a href="#">各地小吃</a>
              <ul class="first_ul">
                <li><a href="#">四川小吃</a></li>
                <li><a href="#">广东小吃</a></li>
                <li><a href="#">北京小吃</a></li>
                <li><a href="#">陕西小吃</a></li>
              </ul>
            </div>
            <br>
            <div class="first_d">
              <a href="#">外国菜谱</a>
              <ul class="first_ul">
                <li><a href="#">韩国料理</a></li>
                <li><a href="#">日本料理</a></li>
                <li><a href="#">法国菜</a></li>
                <li><a href="#">意大利餐</a></li>
              </ul>
            </div>
            <div class="first_e">
              <a href="#">烘焙</a>
              <ul class="first_ul">
                <li><a href="#">蛋糕面包</a></li>
                <li><a href="#">饼干配方</a></li>
                <li><a href="#">甜品点心</a></li>
              </ul>
            </div>
            <div class="first_d">
              <a href="#">厨房百科</a>
              <ul class="first_ul">
                <li><a href="#">摆盘围边</a></li>
                <li><a href="#">烹饪技巧</a></li>
                <li><a href="#">生活妙招</a></li>
                <li><a href="#">美食专题</a></li>
              </ul>
            </div>
            <div class="first_f">
              <a href="#">食材百科</a>
              <ul class="first_ul">
                <li><a href="#">蔬菜</a></li>
                <li><a href="#">水果</a></li>
                <li><a href="#">谷类</a></li>
              </ul>
            </div>
            <div id="img_first"></div>
          </div>
        </li>
        <li class="strong" @click="li3" @mouseenter="block2" @mouseleave="none2">
          <a href="#">
            <strong :class="show==3?'border_b_red':''">饮食健康</strong>
          </a>
          <div class="nav_last" :style="{display:dis5}">
            <div class="first_a">
              <a href="#">饮食健康</a>
              <ul class="first_ul">
                <li><a href="#">饮食小常识</a></li>
                <li><a href="#">美容瘦身</a></li>
                <li><a href="#">食品安全</a></li>
                <li><a href="#">养生妙方</a></li>
                <li><a href="#">饮食禁忌</a></li>
                <li><a href="#">中医保健</a></li>
                <li><a href="#">母婴健康饮食</a></li>
                <li><a href="#">饮食新闻</a></li>
              </ul>
            </div>
            <div class="first_b">
              <a href="#">功能性调理</a>
              <ul class="first_ul">
                <li><a href="#">清热去火</a></li>
                <li><a href="#">减肥</a></li>
                <li><a href="#">祛痰</a></li>
                <li><a href="#">乌发</a></li>
                <li><a href="#">滋阴补肾</a></li>
                <li><a href="#">健脾开胃</a></li>
                <li><a href="#">消化不良</a></li>
                <li><a href="#">清热解毒</a></li>
                <li><a href="#">补阳壮阳</a></li>
                <li><a href="#">增肥</a></li>
              </ul>
            </div>
            <div class="first_d">
              <a href="#">人群膳食</a>
              <ul class="first_ul">
                <li><a href="#">孕妇</a></li>
                <li><a href="#">老人</a></li>
                <li><a href="#">产妇</a></li>
                <li><a href="#">哺乳期</a></li>
                <li><a href="#">青少年</a></li>
                <li><a href="#">幼儿</a></li>
                <li><a href="#">学龄期儿童</a></li>
              </ul>
            </div>
            <div class="first_g">
              <a href="#">疾病调理</a>
              <ul class="first_ul">
                <li><a href="#">糖尿病</a></li>
                <li><a href="#">高血压</a></li>
                <li><a href="#">痛风</a></li>
                <li><a href="#">胃炎</a></li>
                <li><a href="#">痔疮</a></li>
                <li><a href="#">更年期</a></li>
                <li><a href="#">甲状腺</a></li>
              </ul>
            </div>
            <div class="first_d">
              <a href="#">脏腑调理</a>
              <ul class="first_ul">
                <li><a href="#">感冒</a></li>
                <li><a href="#">补肾</a></li>
                <li><a href="#">阳痿早泄</a></li>
                <li><a href="#">补血</a></li>
                <li><a href="#">便秘</a></li>
                <li><a href="#">腹泻</a></li>
                <li><a href="#">活血化瘀</a></li>
              </ul>
            </div>
            <div id="img_last"></div>
          </div>
        </li>
        <li class="strong" @click="li4">
          <a href="#">
            <strong :class="show==4?'border_b_red':''">美食菜单</strong>
          </a>
        </li>
        <li class="strong" @click="li5">
          <a href="#">
            <strong :class="show==5?'border_b_red':''">家居馆</strong>
          </a>
        </li>
        <li class="strong" @click="li6">
          <a href="#">
            <strong :class="show==6?'border_b_red':''">美食达人</strong>
            <img src="img/header/n-nav.png" alt="" srcset="" class="imgs">
          </a>
        </li>
        <li class="strong" @click="li7">
          <a href="#">
            <strong :class="show==7?'border_b_red':''">菜谱视频</strong>
          </a>
        </li>
        <li class="strong" @click="li8">
          <a href="#">
            <strong :class="show==8?'border_b_red':''">手机版下载</strong>
          </a>
        </li>  
      </ul>
    </div>
  </header>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        kwords:'',
        show:1,
        dis1:"none",
        dis2:"none",
        dis3:"none",
        dis4:"none",
        dis5:"none",
        sign:"签到",
      }
    },
    created() {
      
    },
    methods: {
      handlSearch(){
        console.log(`查询${this.kwords}`)
      },
      block1(){
        this.dis4="block"; 
      },
      none1(){
        this.dis4="none";
      },
      block2(){
        this.dis5="block";
      },
      none2(){
        this.dis5="none";
      },
      search(){
        this.$router.push("/products/"+this.kwords)
      },
      Sign(){
        this.sign="已签到";
      },
      li0(){
        this.show=0;
      },
      li1(){
        this.show=1;
      },
      li2(){
        this.show=2;
      },
      li3(){
        this.show=3;
      },
      li4(){
        this.show=4;
      },
      li5(){
        this.show=5;
      },
      li6(){
        this.show=6;
      },
      li7(){
        this.show=7;
      },
      li8(){
        this.show=8;
      },
      tan_chu1(){
        this.dis1='block';
      },
      tan_me1(){
        this.dis1='none';
      },
      tan_chu2(){
        this.dis2='block';
      },
      tan_me2(){
        this.dis2='none';
      },
      tan_chu3(){
        this.dis3='block';
      },
      tan_me3(){
        this.dis3='none';
      },
      signout(){
        var url = "http://127.0.0.1:8000/login/signout";
        this.axios.get(url).then(res=>{
          this.$store.commit("signout");
        })
      },
      
    },
    watch: {
      kwords(){
        this.handlSearch();
      }, 
    },
  }
</script>
<style scoped>
ul{
  list-style: none;
}
/* header */
.container{
  width: 100%;
  background: -webkit-linear-gradient(left,#dd1c20 0%,#b7020f 50%, #a1000d 100%);
  height: 7rem;
}
.content{
  width: 990px;
  height: 7rem;
  margin: 0 auto; 
}
.logo{
  float: left;
  position: relative;
  top: 8px;
}
.search{
  position: relative;
  width: 430px;
  height: 110px;
  float: left;
  margin-left: 69px;
}
.login{
  float: right;
  height: 112px;

}
.login a {
  padding: 6.1px;
  color:#fff;
  font-size: 14px;
  text-decoration: none;
  margin-left: 6px;
}
.login a label:hover{
  cursor: pointer;
}
.login>a:hover {
  border-radius: 3%;
  background: rgba(0,0,0,0.3)
}
.login a img{
  line-height: 28px;
  vertical-align: bottom;
  width: 20px;
  margin-top: 55px; 
}
.input_txt{
  position: absolute;
  top:46px;
  left: 0px;
  width: 326px;
  height: 16px;
  padding: 8px;
  border: 2px solid #fff;
  border-top-left-radius:1%; 
  border-bottom-left-radius:1%; 
}
.input_btn{
  position: absolute;
  top:46px;
  left: 344px;
  width: 80px;
  height: 36px;
  font-size: 14px;
  color: #fff;
  border: 2px solid #fff;
  border-top-right-radius: 4%;
  border-bottom-right-radius: 4%;
  background: #a8000f;
}
.input_btn:hover{
  background: #890511;
}
/* 导航栏*/
.nav{
  width: 100%;
  height: 76px;
  background-color:#fff; 
  box-shadow: 10px 0px 10px rgba(0,0,0,0.3);
  position:relative;
  left: 0px;
  z-index:2000;
}
.main_nav{
  clear: both;
  position: relative;
  height: 76px;
  width: 990px;
  margin:auto;
  list-style: none;
  display: flex;
  justify-content: space-around;
}
.imgs{
  position: absolute;
  top:-13px;
  left:85px;
}
a{
  text-decoration: none;
  font-family: Microsoft Yahei,黑体;
  color: #444;
  position: relative;
}
.main_nav>li>a{
  display: block;
  height: 50px;
  padding-left: 24px;
  padding-right: 24px;
}
.main_nav>li{
 padding-top: 1.5rem;
}
.strong>a>strong{
   display:block;
   height: 48px;
} 
.border_b_red{
  height:48px;
  border-bottom: 4px solid #ff3232;
}
.main_nav>li:hover{
  cursor: pointer;
  background: #fafafa;
}
.main_nav>li:nth-child(2),.main_nav>li:nth-child(3){
  width: 112px;
}
.main_nav>li:nth-child(2):hover,.main_nav>li:nth-child(3):hover{
 width: 112px;
 margin-left: 0;
}

.nav_first,.nav_last{
  width: 990px;
  height: 285px;
  background: #fafafa;
  position: relative;
  box-shadow: 3px 3px 5px rgba(0,0,0,0.1);
  top: 2px;
}
.nav_first{
  left:-123px ;
}
.nav_last{
  left: -250.5px;
}
.first_ul{
  margin-left: -38px;
}
.first_ul>li{
  float: left;
  padding-top: 5px;
  padding-left: 18px;
}
.first_ul>li:first-child{
  padding-left:0px; 
}
.first_a{
  height: 51px;
  padding-top: 20px;
  padding-left: 20px;
}
.first_b{
  float: left;
  padding-top: 10px;
  padding-left: 20px;
}
.first_d{
  float: left;
  padding-top: 12px;
  padding-left: 20px;
}
.first_e{
  float: left;
  padding-top: 12px;
  padding-left: 145px;
}
.first_f{
  float: left;
  padding-top: 12px;
  padding-left: 134px;
}
.first_g{
  float: left;
  padding-top: 12px;
  padding-left: 22px;
}
.first_a>a,.first_b>a,.first_d>a,.first_e>a,.first_f>a,.first_g>a{
  color: #ff3232;
  font-size: 17px;
} 
.first_ul>li>a{
  color: #999;
  font-size: 12px;
}
.first_a>a:hover,.first_b>a:hover,.first_d>a:hover,.first_ul>li>a:hover{
  color: #fff;
  background-color:#ff3232; 
}
.first_c{
  float: left;
  margin-left: 5px;
}
.first_d{
  clear: both;
  float: left;
}
 #img_first,#img_last{
  position: absolute;
  width: 395px;
  height: 226px;
  bottom: -36px;
  right: -32px;
  background: url(../../public/img/header/n-bg1.png)  right bottom no-repeat;
  background-position: center center;
  background-size: 382px;
}
#img_last{
  position: absolute;
  width: 404px;
  height: 226px;
  bottom: -26px;
  right: -104px;
  background: url(../../public/img/header/n-bg2.png)  right bottom no-repeat;
  background-position: center center;
  background-size: 330px;
}
 /* #signin{
  display: block;
   
}
#signout{
  display: none;
  
}  */
/* 登录成功后的个人信息 */
.userinfo{
  height: 36px;
  margin-top: 46px;
  display: inline-block;
  vertical-align: top;
  display: inline;
  text-align: right;
  float: left;
}
.userinfo a{
  margin: 0;padding: 0
}
.userinfo_w{
  display: inline-block;
  vertical-align: top;
  height: 36px;
  position: relative;
}
.userinfo a.avatar{
  display: inline-block;
  vertical-align: top;
  height: 36px;
  width: 36px;
  margin-right: 5px;
  padding: 0px;
}
.userinfo a.avatar img{
  height: 35px;
  width: 35px;
  margin-top:0; 
  display: block;
}
.userinfo a.outer{
  display: inline-block;
  vertical-align: top;
  height: 36px;
  line-height: 36px;
  font-size: 12px;
  color: #fff;
  padding: 0px 10px;
  position: relative;
}
.userinfo a.outer:hover{
  text-decoration: underline;
}
.top_userinfo_more{
  width: 140px;
  background: #fff;
  position: absolute;
  top:-10px;
  left: -10px;
  z-index: 3000;
  box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.2);
  padding: 10px;
  text-align: left;
}
.top_userinfo_more .u{
  height: 36px;
  width: 140px;
}
.top_userinfo_more .u .imga{
  display: block;
  height: 36px;
  width: 36px;
  float: left;
}
.u .imga img{
  display: block;
  margin: 0;
  height: 36px;
  width: 36px;
}
.u .n{
  height: 36px;
  padding-left: 10px;
  width: 90px;
  overflow: hidden;
}
.u .n a{
  display: inline-block;
  height: 18px;
  font-size: 12px;
  line-height: 18px;
  color: #ff3232;
}
.u .n>a:first-child{
  font-size: 12px;
  overflow: hidden;
  width: 45px;
  text-overflow: ellipsis;
}
.u .n>a:first-child:hover{
  color: #ff3232;
  text-decoration: underline;
}
.v{
  display: block;
  width: 30px;
  height: 44px;
  display: inline-block;
  vertical-align: top;
  background: url(../../public/img/header/vip.png) center no-repeat;
}
.u .n .l{
  height: 18px;
  line-height: 10px;
  display: block;
  color: #999;
  padding: 0px;
}
.userinfo span{
  display: inline-block;
  vertical-align: top;
  display: inline;
  height: 36px;
  line-height: 36px;
  color: #fff;
  padding: 0px 10px;
  font-size: 12px;
}
.userinfo .mes {
  height: 36px;
  display: inline-block;
  vertical-align: top;
  display: inline;
}
.topbar_mesbox {
  position: absolute;
  border: 1px solid #eddcbd;
  border-radius: 4px;
  overflow: hidden;
  border-bottom: 0px;
  right: 0px;
  top: 84px;
  width: 150px;
  text-align: center;
}
.userinfo .qd {
  display: inline-block;
  vertical-align: top;
  display: inline;
  zoom: 1;
  height: 36px;
  position: relative;
}
.top_userinfo_more ul li {
  position: relative;
  left: -40px;
  top: -6px;
  font-size: 12px;
  border-bottom: 1px solid #f5f5f5;
  float: left;
}
.top_userinfo_more ul li a.redbtn{
  display: block;
  height: 32px;
  width: 140px;
  background: #ff3232;
  color: #fff;
  text-align: center;
  line-height: 32px;
  margin: 10px 0px 10px;
}
.top_userinfo_more ul li a.redbtn:hover{
  background: #e90808;
  text-decoration: none;
}
.top_userinfo_more ul li a.greybtn {
  display: block;
  height: 32px;
  width: 140px;
  background: #eee;
  color: #666;
  text-align: center;
  line-height: 32px;
  margin: 0px 0px 10px;
}
.top_userinfo_more ul li a.greybtn:hover{
  background: #ddd;
  text-decoration: none;
}
.top_userinfo_more ul li a.linkk {
  height: 32px;
  font-size: 12px;
  line-height: 32px;
  color: #666;
  display: block;
  width: 140px;
  background: url(../../public/img/header/itoparrow.png) right center no-repeat;
}
.top_userinfo_more ul li a.linkk:hover{
  color: #ff3232;
  text-decoration: underline;
}
/* 发布图文 */
.dr_getmission_box1 {
  height: 100%;
  width: 100%;
  background: #000;
  background: rgba(0,0,0,0.6);
  position: fixed;
  left: 0px;
  top: 0px;
  z-index: 6000;
  text-align: left;
}
.dr_getmission_box_c1 {
  height: 380px;
  width: 800px;
  background: #fff;
  box-shadow: 0px 0px 40px rgba(0,0,0,0.6);
  position: fixed;
  left: 50%;
  top: 50%;
  margin: -190px 0px 0px -400px;
  border-radius: 2px;
}
.dr_getmission_box_c1 .topbar {
  height: 60px;
  line-height: 60px;
  font-size: 22px;
  color: #333;
  text-align: center;
  border-bottom: 1px dashed #eee;
}
.dr_getmission_box_c1 .info {
  padding: 0px 40px;
}
.dr_getmission_box_c1 .info strong {
  display: block;
  margin-top: 12px;
  font-size: 18px;
  line-height: 32px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.dr_getmission_box_c1 .info span {
  color: #ff4c35;
  font-size: 14px;
  line-height: 24px;
  display: inline-block;
  vertical-align: top;
  padding-right: 14px;
}
.dr_getmission_box_c1 .addrbox {
  position: absolute;
  top: 144px;
  height: 295px;
  font-size: 0px;
  padding: 0px 40px;
}
.dr_getmission_box_c1 .addrbox .t {
  height: 35px;
  padding-top: 10px;
  line-height: 30px;
  color: #333;
  text-align: center;
  display: block;
  font-weight: bold;
  font-size: 15px;
  border-top: 1px dashed #eee;
}
.dr_getmission_box_c1 .addrbox .addrinputw1 {
  font-size: 0px;
  height: 25px;
  margin-bottom: 10px;
  width: 50%;
  display: inline-block;
  vertical-align: top;
}
.dr_getmission_box_c1 .addrbox .addrinputw1 span {
  width: 80px;
  text-align: right;
  display: inline-block;
  vertical-align: top;
  font-size: 13px;
  color: #666;
  text-align: right;
  line-height: 32px;
}
.dr_getmission_box_c1 .addrbox .addrinputw1 input {
  height: 22px;
  line-height: 22px;
  color: #333;
  font-size: 15px;
  padding: 4px;
  border: 1px solid #ddd;
  border-radius: 2px;
  width: 180px;
}
.dr_getmission_box_c1 .addrbox .addrinputw_l input {
  width: 468px;
}
.dr_getmission_box_c1 .addrbox .addrinputw1 span em {
  color: #ff4c35;
  font-style: normal;
  font-weight: normal;
}
.dr_getmission_box_c1 .addrbox .addrinputw_l {
  width: 100%;
}
.dr_getmission_box_c1 .addrbox .addrsubmitw {
  width: 100%;
  height: 32px;
  line-height: 32px;
  text-align: center;
  margin-top: 14px;
  font-size: 12px;
}
.dr_getmission_box_c1 .addrbox .addrsubmitw .exit {
  height: 30px;
  line-height: 30px;
  border: 1px solid #ddd;
  background: #f5f5f5;
  color: #666;
  font-size: 15px;
  text-align: center;
  width: 80px;
  display: inline-block;
  vertical-align: top;
  border-radius: 2px;
  margin: 0px 6px;
}
.dr_getmission_box_c1 .addrbox .addrsubmitw .submit {
  height: 30px;
  line-height: 30px;
  border: 1px solid #e90808;
  background: #ff4c35;
  color: #fff;
  font-size: 15px;
  text-align: center;
  width: 80px;
  display: inline-block;
  vertical-align: top;
  border-radius: 2px;
  margin: 0px 6px;
}
/* 签到  */
.qdbox {
  width: 237px;
  position: absolute;
  right: -10px;
  top: -10px;
  background: #fff;
  display: none;
  z-index: 3000;
  box-shadow: 0px 1px 1px rgba(0,0,0,0.2);
}
.qdbtn_w {
  height: 24px;
  margin: 10px;
  font-size: 12px;
  line-height: 24px;
  text-align: left;
  width: 218px;
}
.qdbtn_w a {
  display: block;
  float: right;
  height: 22px;
  border: 1px solid #ff3232;
  display: inline-block;
  vertical-align: top;
  display: inline;
  padding: 0px 10px;
  color: #ff3232;
  line-height: 22px;
  border-radius: 3px;
}
.qdbtn_w strong {
  color: #ff3232;
  font-weight: bold;
  padding: 0px 3px 0px 0px;
  font-style: normal;
}
.userinfo span.sign_in {
  display: inline;
}
.qdbtn_w em {
  display: block;
  float: right;
  height: 22px;
  border: 1px solid #ddd;
  display: inline-block;
  vertical-align: top;
  display: inline;
  padding: 0px 10px;
  color: #ddd;
  line-height: 22px;
  border-radius: 3px;
}
.rili_w {
  height: 254px;
  width: 217px;
  margin: 0px auto;
  background: #f5f5f5;
}
.nowmon {
  text-align: center;
  height: 36px;
  line-height: 36px;
  border-bottom: 1px solid #eee;
  font-size: 12px;
}
.nowmon em {
  display: inline-block;
  vertical-align: top;
  display: inline;
  height: 36px;
  margin: 0px 4px;
  color: #999;
  font-size: 12px;
}
.weeknum {
  height: 31px;
  line-height: 31px;
  color: #333;
  text-align: center;
}
.weeknum em {
  display: block;
  height: 31px;
  float: left;
  width: 31px;
  font-size: 12px;
  font-style: normal;
  font-weight: normal;
}
.rili{
  margin: 0;
  padding: 0;
  clear: both;
  display: block;
}
.rili li {
  height: 30px;
  border-right: 1px solid #eee;
  border-top: 1px solid #eee;
  width: 30px;
  float: left;
  line-height: 30px;
  text-align: center;
  color: #ff3232;
  font-size: 12px;
  font-weight: bold;
  vertical-align: baseline;
  background: transparent;
}
.rili li.today {
  background-color: #ff3232;
  color: #fff;
}
.rili li.dao {
  background-image: url(../../public/img/header/dao_inxt.gif);
  background-position: 0px 0px;
}
.rili li.todaydao {
  background-image: url(../../public/img/header/dao_inxt.gif);
  background-position: 0px -30px;
}
.qdjfjs {
  width: 218px;
  clear: both;
  margin: 0px auto;
}
.qdjfjs dt {
  line-height: 38px;
  height: 38px;
  display: block;
  color: #333;
  font-size: 12px;
  padding-top: 2px;
  text-align: center;
  border-bottom: 1px solid #f5f5f5;
}
.qdjfjs dt strong {
  font-weight: bold;
  color: #ff3232;
  font-size: 12px;
}
dl dd {
  margin: 0;
  padding: 0;
}
.qdjfjs dd .t {
  height: 28px;
  border-bottom: 1px solid #f5f5f5;
  line-height: 28px;
  width: 218px;
  margin-bottom: 6px;
}
.qdjfjs dd .t span {
  display: block;
  height: 28px;
  width: 109px;
  float: left;
  text-align: center;
  color: #333;
  font-size: 12px;
  font-weight: bold;
  padding: 0px;
  line-height: 28px;
}
.qdjfjs dd .c {
  width: 218px;
}
.qdjfjs dd .c span {
  display: block;
  height: 28px;
  width: 109px;
  float: left;
  text-align: center;
  color: #999;
  font-size: 12px;
  padding: 0px;
  line-height: 28px;
}
.qdjfjs dd a.more {
  display: block;
  height: 40px;
  line-height: 40px;
  color: #ff3232;
  border-top: 1px solid #f5f5f5;
}
</style>
