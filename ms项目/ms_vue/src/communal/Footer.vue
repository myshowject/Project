<template>
  <div id="ms-footer">
    <footer>
    <div class="mian_footer">
      <div class="footer_con1">
        <p class="text">
          <a href="#" class="footer_homelink"></a>
          中国，最大的菜谱库
          <strong> 800,000 篇</strong>
          <br>
          每月，用户访问数量
          <strong> 20,000,000 次</strong>
          <br>      
          每年，菜谱被浏览量
          <strong> 36,000,000,000 次</strong>
          <br> 
          现在，这些数字还在不断的增长着，欢迎您来一起使用美食杰
        </p>
        <div class="links">
          <ul class="links_ul">
            <li class="links_sina">
              <a href="#" target="_blank" class="img">
                <span>关注：49万</span>
              </a>
              <p>
                <a href="#">
                  点击进入
                  <br>
                  美食节官方微博
                </a>
              </p>
            </li>
            <li class="links_tengxun">
              <a href="#" target="_blank" class="img">
                <span>关注：10.9万</span>
              </a>
              <p>
                <a href="#">
                  点击进入
                  <br>
                  美食杰QQ空间
                </a>
              </p>
            </li>
            <li class="links_weixin">
              <a href="#" target="_blank" class="img"></a>
              <p>
                <a href="#">
                  扫描二维码添加
                  <br>
                  小易为微信好友
                </a>
              </p>
            </li>
            <li class="links_QQ">
              <a href="#" target="_blank" class="img"></a>
              <p>
                <a href="#">
                  扫描二维码添加
                  <br>
                  小易为QQ好友
                </a>
              </p>
            </li>
          </ul>
        </div>
      </div>
      <div class="footer_con2">
        <div class="footer_item">
          <a href="#">友情链接</a>
          <ul class="friend_link">
            <li><a target="_blank" href="#" title="美食">美食</a></li>      
            <li><a target="_blank" href="#" title="体质测试">体质测试</a></li>    
            <li><a target="_blank" href="#" title="伊特">伊特</a></li>      
            <li><a target="_blank" href="#" title="大粤网美食">大粤网美食</a></li>      
            <li><a target="_blank" href="#" title="9酷音乐网">9酷音乐网</a></li>
            <li><a target="_blank" href="#" title="爱奇艺生活">爱奇艺生活</a></li>       
            <li><a target="_blank" href="#" title="365音乐网">365音乐网</a></li>  <li><a target="_blank" href="#" title="图吧">图吧</a></li>       
            <li><a target="_blank" href="#" title="汽车论坛">汽车论坛</a></li>   
            <li><a target="_blank" href="#" title="39健康饮食">39健康饮食</a></li>       
            <li><a target="_blank" href="#" title="QQ下载">QQ下载</a></li>       
            <li><a target="_blank" href="#" title="家具网">家具网</a></li>       
            <li><a target="_blank" href="#" title="搜狐美食">搜狐美食</a></li>  
            <li><a target="_blank" href="#" title="美食天下">美食天下</a></li>
            <li><a target="_blank" href="#" title="中华美食网">中华美食网</a></li>       
            <li><a target="_blank" href="#" title="重庆公交网">重庆公交网</a></li>       
            <li><a target="_blank" href="#" title="苹果园">苹果园</a></li>       
            <li><a target="_blank" href="#" title="红餐微杂志">红餐微杂志</a></li>       
            <li><a target="_blank" href="#" title="北京搜房网">北京搜房网</a></li>       
            <li><a target="_blank" href="#" title="更多友情链接">更多友情链接</a></li>       
          </ul>
        </div>
      </div>
      <div class="footer_con3">
        <ul >
          <li><a target="_blank" href="#" title="公司简介">公司简介</a></li>
          <li><a target="_blank" href="#" title="企业文化">企业文化</a></li>
          <li><a target="_blank" href="#" title="公司动态">公司动态</a></li>
          <li><a target="_blank" href="#" title="免责声明">免责声明</a></li>
          <li><a target="_blank" href="#" title="联系我们">联系我们</a></li>
          <li><a target="_blank" href="#" title="招贤纳士">招贤纳士</a></li>
          <li><a target="_blank" href="#" title="商务合作">商务合作</a></li>
          <li><a target="_blank" href="#" title="网站地图">网站地图</a></li>
          <li><a target="_blank" href="#" title="友情链接">友情链接</a></li>
          <li><a target="_blank" href="#" title="美食杰移动APP">美食杰移动APP</a></li>
        </ul>
        <p>
          <a target="_blank" href="#" class="gray_a">渝ICP备15826471号</a>
          /
          <a target="_blank" href="#" class="gray_a">
            <img src="img/footer/footer_beian.png" alt="" srcset="">
            渝公网安备15826471718961 
          </a>
          Copyright &copy; 2018-2038 MEISHIJ CO.,LTD.
        </p>
      </div>
    </div>
  </footer>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        
      }
    },
  }
</script>
<style scoped>
*{padding: 0;margin: 0}
ul{list-style: none;}
a{
  text-decoration: none;
}
/* mian_footer */
.mian_footer{
  width: 100%;
  background: #3f3a32;
  padding-bottom: 60px;
  margin-top: 40px;
  position: relative;
}
/* footer_con1 */
.footer_con1{
  width: 990px;
  height: 200px;
  margin: 0 auto;
  position: relative;
}
p.text{
  color: #fff;
  line-height: 24px;
  font-size: 12px;
  padding: 20px 0;
  width: 600px;
  float: left;
  text-align: left;
  padding-top: 80px;
  background: url(../../public/img/footer/footer_log.png) 0px 15px no-repeat;
}
p.text>strong{
  font-size: 16px;
  padding: 0 4px;
  color: #ff3232;
  font-family: arial;
}
.footer_homelink{
  display: block;
  height: 80px;
  width: 100px;
  position: absolute;
  top: 0;
  left: 0;
}
/* links */
.links{
  position: absolute;
  right: 0;
  top: 30px;
}
.links ul li{
  position: relative;
  display: inline-block;
  vertical-align: top;
  background: url(../../public/img/footer/footerlinks.png) no-repeat;
  width: 105px;
  margin-left: 20px;
  height: 160px;
}
.links ul li.links_tengxun{
  background-position-x: -105px;
}
.links ul li.links_weixin{
  background-position-x: -315px;
}
.links ul li.links_QQ{
  background-position-x: -214px;
}
.links ul li .img{
  display: block;
  height: 105px;
  width: 105px;
}
.links ul li .img span {
  height: 26px;
  line-height: 26px;
  display: block;
  width: 105px;
  color: #fff;
  text-align: center;
  padding-top: 79px;
}
.links ul li p{
  position: absolute;
  font-size: 12px;
  z-index: 50;
  bottom: 0px;
  left: 0px;
  width: 105px;
  color: #999;
  line-height: 18px;
  height: 36px;
  padding: 9px 0px;
  text-align: center;
}
.links ul li p a{
  color: #999;
}
.links ul li p a:hover{
  color: #fff;
  text-decoration: underline;
}
/* footer_con2 */
.footer_con2{
  width: 990px;
  height: 119px;
  margin: 0 auto;
  font-size: 12px;
}
.footer_item{
  padding: 10px 0;
}
.footer_item>a{
  font-size: 14px;
  color: #fff;
  display: block;
  height: 40px;
  border-bottom: 1px solid #444;
  line-height: 40px;
  float: left;
  display: block;
  width: 990px;
  margin-bottom: 8px;
}
.friend_link li{
    float: left;
    height: 25px;
    line-height: 25px;
    color: #fff;
    width: 99px;
}
.friend_link li>a{
  color: #999;
}
.friend_link li>a:hover{
  color: #ff3232;
  text-decoration: underline;
}
/* footer_con3 */
.footer_con3{
  clear: left;
  width: 990px;
  margin: 0px auto;
  border-top: 1px solid #444;
  text-align: center;
  padding: 10px 0px 30px 0px;
}
.footer_con3>ul>li{
  display: inline-block;
  vertical-align: top;
}
.footer_con3>ul>li>a{
  display: inline-block;
  color: #999;
  padding: 0px 10px;
  height: 24px;
  line-height: 24px;
  font-size: 12px;
}
.footer_con3>ul>li>a:hover{
  color: #fff;
  background: #ff3232;
}
.footer_con3 p {
  height: 24px;
  line-height: 24px;
  color: #666;
  font-size: 12px;
}
.gray_a{
  color: #666666;
  font-size: 12px;
}
</style>
