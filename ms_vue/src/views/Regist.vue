<template>
  <div class="ms-login">
    <div class="main_w">
      <div class="loginpage">
        <h3 class="nl_title">
          <span class="nl_left"></span>
          注册美食杰
          <span class="nl_right"></span>
        </h3>
        <div class="nl_dl_w">
          <div class="nl_dl_wl">
            <a href="javascript:;" class="a1">
              <span class="icon"></span>
              <!-- 微信登录 -->
            </a>
            <a href="javascript:;" class="a2">
              <span class="icon"></span>
              <!-- QQ登录 -->
            </a>
            <a href="javascript:;" class="a3">
              <span class="icon"></span>
              <!-- 微博登录 -->
            </a>
          </div>
          <a href="javascript:;" class="golink" id="more_dsf_btn" @click="show">{{text}}</a>
          <div class="nl_moredsf" :style="{display:dis}">
            <a href="javascript:;" class="a1">人人网账号登录</a>
            <a href="javascript:;" class="a2">百度账号登录</a>
            <a href="javascript:;" class="a3">开心网账号登录</a>
            <a href="javascript:;" class="a4">盛大通行证登录</a>
          </div>
        </div>
        <div class="nl_or"></div>
        <div class="nl_more_zc">
          <div class="nl_tab">
            <a href="javascritp:;" :class="act==2?'current':''" @click="phone">手机注册</a>
            |
            <a href="javascript:;" :class="act==1?'current':''" @click="email">用户注册</a>
          </div>
          <div class="nl_loginbox_a">
            <div class="nl_loginbox_b" :style="{marginLeft:left}">
              <form>
                <div class="nl_loginbox_c">
                  <div class="nl_loginitem">
                    <input type="text" class="text" placeholder="请输入手机号">
                  </div>
                  <div class="login_tips tip"></div>
                  <div class="nl_loginitem">
                    <input type="text" class="text widtha" placeholder="123456" readonly>
                    <a href="javascript:;" class="phone_yzmbtn sended" @click="countDown">{{content}}</a>
                  </div>
                  <div class="login_tips false" style="display:none;"></div>
                  <div class="nl_loginitem">
                    <input type="password" class="password" placeholder="请输入密码">
                  </div>
                  <div class="login_tips tip"></div>
                  <div class="login_pw_tips state1"></div>
                  <div class="nl_loginitem heighta">
                    <label>
                      <input type="checkbox" class="checkbox">
                      我已阅读并且同意
                      <a href="javascript:;">美食节用户使用协议</a>
                    </label>
                  </div>
                  <div class="nl_loginitem align">
                    <input type="button" class="logins" value="注册">
                  </div>
                </div>
              </form>
              <form>
                <div class="nl_loginbox_c">
                  <div class="nl_loginitem">
                    <input type="text" class="text" name="uname" placeholder="请输入用户名" v-model="uname" @blur.prevent="checkName">
                  </div>
                  <div class="login_tips tip"></div>
                  <div class="nl_loginitem">
                    <input type="password" class="password" name="password" placeholder="请输入密码" v-model="upwd1">
                  </div>
                  <div class="login_tips tip"></div>
                  <div class="nl_loginitem">
                    <input type="password" class="password" name="password" placeholder="请输入确认密码" v-model="upwd2">
                  </div>
                  <div class="login_tips tip"></div>
                  <div class="login_pw_tips state2"></div>
                  <div class="nl_loginitem heighta">
                    <label>
                      <input type="checkbox" class="checkbox">
                      我已阅读并且同意
                      <a href="javascript:;">美食节用户使用协议</a>
                    </label>
                  </div>
                  <div class="nl_loginitem align">
                    <input type="button" class="logins" value="注册" @click="regist">
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        <router-link to="/login" href="javascript:;" class="golink">已有账号？马上登陆 ∧</router-link
        >
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        act:1,
        left:"-320px",
        dis:'none',
        text:'更多第三方登录方式 ∨',
        content:'免费获取验证码',
        totalTime:60,
        uname:'',
        upwd1:'',
        upwd2:'',
        isSumit:false,
      }
    },
    methods: {
      checkName(){
        var uname = this.uname;
        var url  = "http://127.0.0.1:8000/regist/existsName?uname="+uname;
        this.axios.get(url).then(res=>{
          if(res.data.code > 0){
            this.isSumit = false;
            alert(res.data.msg);
          }else{
            this.isSumit = true; 
            alert(res.data.msg);
          }
        })
      },
      regist(){
        if(!this.isSumit){
          alert("用户名已存在，请重新填写");
          return;
        };
        var uname = this.uname;
        var upwd1 = this.upwd1;
        var upwd2 = this.upwd2;
        var reguname = /^[\u4e00-\u9fa5]{2,5}|[a-z0-9_]{3,12}$/i ;
        var regupwd = /^[\w\.]{6,12}$/i;
        if(!reguname.test(uname)){
          alert("用户名格式不正确");
          return;
        };
        if(!regupwd.test(upwd1)){
          alert("用户密码格式不正确");
          return;
        };
        if(upwd1 != upwd2){
          alert("两次密码输入不一致")
          return;
        };
        var url = 'http://127.0.0.1:8000/regist/register';
        this.axios.post(url,`uname=${uname}&upwd=${upwd1}`
        ).then(res=>{
          if(res.data.code>0){
            alert(res.data.msg);
            this.$router.push("/login");
          }else{
            alert(res.data.msg);
          }
        })
      },
      countDown(){
        this.content = this.totalTime + 's后重新发送';
        var clock = window.setInterval(()=>{
          this.totalTime -- ;
          this.content = this.totalTime + 's后重新发送';
          if(this.totalTime < 0){
            window.clearInterval(clock);
            this.content = "重新获取验证码";
            alert("验证码已发送");
            this.totalTime = 60
          }
        },1000)
      },
      phone(){
       this.act=2;
        this.left="0px";
      },
      email(){
         this.act=1;
         this.left="-320px";
        
      },
      show(){
        if(this.dis=="none"){
          this.text="收起 ∧";
          this.dis="block";
        }else{
          this.text="更多第三方登录方式 ∨";
          this.dis="none";
        }
      },
    }
  }
</script>

<style scoped>
  *{margin: 0;padding: 0;}
/* login页面大小 */
.loginpage{
  width: 1000px;
  background: #fff;
  font-size: 12px;
  margin: 40px auto 0px;
  padding: 1px 0px 60px;
}
/* login标题 */
.nl_title{
  height: 43px;
  line-height: 42px;
  font-size: 22px;
  color: #333;
  text-align: center;
  margin: 40px auto;
  font-weight: normal;
}
.nl_left{
  display: inline-block;
  width: 91px;
  height: 9px;
  vertical-align: top;
  margin-top: 17px;
  background: url(../../public/img/login/nl_title_left.png) center no-repeat;
  margin-right:20px; 
}
.nl_right{
  display: inline-block;
  vertical-align: top;
  width: 91px;
  height: 9px;
  margin-top: 17px;
  background: url(../../public/img/login/nl_title_right.png) center no-repeat;
  margin-left: 20px;
}
/* 第三方登录整体大小 */
.nl_dl_w{
  text-align: center;
  font-size: 12px;
}
.nl_dl_wl{
  text-align: center;
}
/* 注册页面的微信QQ微博 */
.nl_dl_wl a{
  display: inline-block;
  vertical-align: top;
  width: 108px;
  margin: 0px 25px;
  line-height: 44px;
  font-size: 15px;
}
.nl_dl_wl a span{
  display: block;
  width: 108px;
  height: 108px;
  background: url(../../public/img/login/nl_dsficon1.png) no-repeat;
}
.nl_dl_wl .a1 span{
  background-position:0px 0px; 
}
.nl_dl_wl .a1:hover span{
  background-position:0px -108px; 
}
.nl_dl_wl .a2 span{
  background-position:-108px 0px; 
}
.nl_dl_wl .a2:hover span{
  background-position:-108px -108px; 
}
.nl_dl_wl .a3 span{
  background-position:-216px 0px; 
}
.nl_dl_wl .a3:hover span{
  background-position:-216px -108px; 
}
.nl_dl_wl .a1{
  color: #8fc31f;
}
.nl_dl_wl .a2{
  color: #7ecef4;
}
.nl_dl_wl .a3{
  color: #fd4e5d;
}
.golink{
  height: 66px;
  line-height: 66px;
  color: #333;
  font-size: 15px;
  display: block;
  margin-top: 20px;
  text-align: center;
}
.golink:hover{
  color: #ec5541;
  text-decoration: underline;
}
/*点击显示的登录 */
.nl_moredsf{
  width: 60%;
  height: 100px;
  text-align: center;
  background: #f5f5f5;
  border: 1px solid #eee;
  margin: 0 auto;
  border-radius: 4px;
  display: none;
}
.nl_moredsf a{
  display: inline-block;
  vertical-align: top;
  height: 16px;
  line-height: 16px;
  margin-top: 42px;
  padding: 0px 20px;
  color: #333;
  background: url(../../public/img/login/nl_moredsf_icons.png) no-repeat;
}
.nl_moredsf a:hover{
  color: #ec5541;
  text-decoration: underline;
}
.nl_moredsf .a1{
  background-position: 0px 0px;
}
.nl_moredsf .a2{
  background-position: 0px -16px;
}
.nl_moredsf .a3{
  background-position: 0px -32px;
}
.nl_moredsf .a4{
  background-position: 0px -48px;
}
.nl_or{
  width: 100%;
  height: 69px;
  text-align: center;
  background: url(../../public/img/login/nl_or.png) center no-repeat;
}
.nl_loginbox{
  width: 320px;
  margin: 24px auto 0px;
  overflow: hidden;
  text-align: left;
}
.nl_loginitem{
  width: 320px;
  height: 44px;
  margin-bottom: 14px;
  font-size: 12px;
}
.nl_loginitem .text,.nl_loginitem .password{
  width: 296px;
  height: 22px;
  border: 1px solid #ddd;
  line-height: 22px;
  font-size: 14px;
  color: #333;
  padding: 11px;
  font-family: "Hiragino Sans GB","冬青黑体","Microsoft Yahei","微软雅黑";
}
.nl_loginitem label {
  color: #666;
  font-size: 13px;
  line-height: 22px;
}
.nl_loginitem label input {
  margin-top: -2px;
  position: relative;
}
.nl_loginitem .forgetpassword {
  float: right;
  display: block;
  line-height: 22px;
  color: #999;
  font-size: 13px;
}
.nl_loginitem .logins {
  display: inline-block;
  vertical-align: top;
  height: 42px;
  border: 1px solid #db432e;
  border-radius: 4px;
  line-height: 40px;
  font-size: 15px;
  color: #fff;
  padding: 0px 24px;
  font-family: "Hiragino Sans GB","冬青黑体","Microsoft Yahei","微软雅黑";
  background: #ec5541;
  cursor: pointer;
}

/* 注册界面 */
.nl_more_zc{
  width: 60%;
  text-align: center;
  background: #f5f5f5;
  border: 1px solid #eee;
  margin: 0px auto;
  border-radius: 4px;
  padding-bottom: 20px;
}
.nl_tab{
  height: 32px;
  line-height: 32px;
  margin: 32px auto 0px;
  text-align: center;
  color: #ddd;
}
.nl_tab a.current{
  font-weight: bold;
  color: #333;
  text-decoration: none;
}
.nl_tab a{
  font-size: 18px;
  color: #999;
  text-decoration: none;
}
/* .nl_tab a:hover{
  font-size: 18px;
  color: #ec5541;
  text-decoration: underline;
} */
.nl_loginbox_a{
  width: 320px;
  overflow: hidden;
  margin: 0px auto 0px;
}
.nl_loginbox_b{
  width: 640px;
  transition: .5s;
}
.nl_loginbox_c{
  width: 320px;
  margin: 24px auto 0px;
  overflow: hidden;
  text-align: left;
  float: left;
}
/* 提示图标 */
.login_tips.tip{
  background-position: 0px 0px;
  color: #7ecef4;
  display: none;
}
.login_tips.false{
  background-position: 0px -48px;
  color: #ec5541;
  display: none;
}
.login_tips.true {
  background-position: 0px -24px;
  color: #8fc31f;
  display: none;
}
.login_tips{
  height: 24px;
  line-height: 24px;
  font-size: 13px;
  margin-top: -10px;
  margin-bottom: 10px;
  background: url(../../public/img//login/nl_tipsicons.png) no-repeat;
  padding-left: 20px;
}
.text.widtha{
  width: 150px;
}
.phone_yzmbtn{
  display: block;
  width: 134px;
  height: 43px;
  line-height: 43px;
  border-radius: 4px;
  font-size: 15px;
  text-align: center;
  float: right;
  background: #8fc31f;
  border: 1px solid #75ab49;
  
}
.phone_yzmbtn.sended{
  background: #ddd;
  border:1px solid #ccc;
  color: #999;
  text-decoration: none;
}
.login_pw_tips{
  display: none;
  height: 24px;
  line-height: 24px;
  font-size: 13px;
  margin-top: -10px;
  margin-bottom: 10px;
  background: url(../../public/img/login/nl_pw_strongly.png) no-repeat;
  padding-left: 80px;
}
.login_pw_tips.state1{
  background-position: 0px 0px;
  color: #ec5541;
}
.nl_loginitem.heighta{
  height: 33px;
}
.nl_loginitem label{
  color:#666;
  font-size: 13px;
  line-height: 22px;
}
.nl_loginitem label a{
  color: #ec5541;
}
.nl_loginitem.align{
  text-align: center;
}

</style>

