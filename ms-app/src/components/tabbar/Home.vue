<template>
 <div class="app-home">
    <!-- 第一个：顶部状态栏  美食节 -->
    <!-- 顶部搜索 -->
    <div class="searchbar_index">
      <input type="text" placeholder="搜索你感兴趣的" class="topsearch">
      <a href="javascript:;" class="topbar_photo_btn"></a>
      <a href="javasrcipt:;" class="topbar_mes_btn"></a>
    </div>
    <!-- 第二个：轮播图 -->
    <mt-swipe :auto="2500">
      <mt-swipe-item v-for="item in lists" :key="item.id">
        <ul class="ul">
          <li v-for="m in item" :key="m.id">
            <router-link :to="'/practice?id='+m.swipid"  class="a_router" :style="'background: url('+m.pic+') center center / 100% no-repeat ; background-size: 100% auto;'">
              <div class="mask"></div>
              <strong>{{m.swiptitle}}</strong>
              <p>{{m.swipsubtitle}}</p>
            </router-link>
          </li>
          <h3 class="sct">{{item[0].title}}</h3>
          <p class="tdes">{{item[0].subtitle}}</p>
        </ul>
      </mt-swipe-item>
    </mt-swipe>
    <!-- 第三个：九宫格 -->
    <ul class="mui-table-view mui-grid-view mui-grid-9">
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
        <a href="#">
          <img src="http://127.0.0.1:8000/img/app/home/caipufenlei.png">
          <!-- <span class="mui-icon mui-icon-home"></span> -->
          <div class="mui-media-body">菜谱分类</div>
        </a>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
        <router-link to="/Videorecipes">
          <img src="http://127.0.0.1:8000/img/app/home/shipincaipu.png">
          <div class="mui-media-body">视频菜谱</div>
        </router-link>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
        <a href="#">
          <img src="http://127.0.0.1:8000/img/app/home/fujin.png">
          <div class="mui-media-body">附近</div>
        </a>
      </li>
   
    </ul> 
    <!-- 第四个：底部导航栏 tabbar -->
    <nav class="mui-bar mui-bar-tab">
      <a class="mui-tab-item mui-active" href="#tabbar">
        <img src="http://127.0.0.1:8000/img/app/home/tabbar_01.png" alt="" srcset="" class="mui-icon">
        <span class="mui-tab-label">推荐</span>
      </a>
      <a class="mui-tab-item" href="#tabbar-with-chat">
        <img src="http://127.0.0.1:8000/img/app/home/tabbar_02.png" alt="" srcset="" class="mui-icon">
        <span class="mui-tab-label">文章精选</span>
      </a>
      <a class="mui-tab-item" href="#tabbar-with-contact">
         <img src="http://127.0.0.1:8000/img/app/home/tabbar_03.png" alt="" srcset="" class="mui-icon">
        <span class="mui-tab-label">发现</span>
      </a>
      <a class="mui-tab-item" href="#tabbar-with-map">
        <img src="http://127.0.0.1:8000/img/app/home/tabbar_04.png" alt="" srcset="" class="mui-icon">
        <span class="mui-tab-label">我的</span>
      </a>
    </nav>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        lists:{
          list1:[{title:''}],
          list2:[{title:''}],
          list3:[{title:''}],
          list4:[{title:''}],
          list5:[{title:''}],
        },
        
      }
    },
    methods: {
      getSwipe(){
        var url = "http://127.0.0.1:8000/apphome/swipe"
          this.axios.get(url).then(res=>{
          this.lists.list1 = res.data.slice(0,3);
          this.lists.list2 = res.data.slice(3,6);
          this.lists.list3 = res.data.slice(6,9);
          this.lists.list4 = res.data.slice(9,12);
          this.lists.list5 = res.data.slice(-3);
        })
      }
    },
    created() {
      this.getSwipe();
    },
  }
</script>
<style scoped>
.app-home{
  padding-top: 44px;
  padding-bottom: 44px;
}
.searchbar_index {
  height: 44px;
  width: 100%;
  position: fixed;
  top:0;
  z-index: 1;
  background: #f5f5f5;
}
.topsearch {
  height: 32px;
  width: 72%;
  border-radius: 2px;
  background: #f5f5f5;
  line-height: 32px;
  margin: 0px 52px;
  color: #aaa;
  font-size: 14px;
  text-align: center;
  display: block;
  position: relative;
  top: 6px;
}
.topbar_photo_btn {
  height: 44px;
  width: 52px;
  position: absolute;
  left: 0px;
  top: 0px;
  background: url(http://127.0.0.1:8000/img/app/home/添加.png) center no-repeat;
  background-size: 52px 44px;
}
.topbar_mes_btn {
  height: 44px;
  width: 52px;
  position: absolute;
  right: 0px;
  top: 0px;
  background: url(http://127.0.0.1:8000/img/app/home/信息.png) center no-repeat;
  background-size: 52px 44px;
}
.app-home .mint-swipe{
  height: 525px;
}
.app-home .mint-swipe img{
  width: 100%;
  height: 80%;
} 
.ul{
  height: 500px;
  padding: 0px 3.125% 0px;
  list-style: none;
  margin: 0;
  font-size: 12px;
}
.ul li{
  width: 100%;
  margin-bottom: 4px;
}
.a_router{
  display: block;
  width: 100%;
  height: 140px;
  overflow: hidden;
  position: relative;
  border-radius: 2px;
}
.a_router strong{
  font-size: 20px;
  color: #fff;
  text-shadow: 0px 1px 0px rgba(0,0,0,0.7);
  font-weight: bold;
  position: absolute;
  left: 5%;
  bottom: 34px;
  line-height: 24px;
}
.a_router p{
  margin: 0;padding: 0;
  font-size: 12px;
  color: #fff;
  text-shadow: 0px 1px 0px rgba(0,0,0,0.7);
  position: absolute;
  left: 5%;
  bottom: 12px;
  line-height: 18px;
}
.mask{
  position: absolute;
  left: 0px;
  bottom: 0px;
  width: 100%;
  background: url(http://site.meishij.net/p2/20160308/20160308103254_342.png) center no-repeat;
  height: 100%;
  background-size: 100% 100%;
}
.sct{
  width: 100%;
  line-height: 20px;
  font-size: 16px;
  color: #333;
  text-align: center;
  padding-top: 12px;
}
.tdes{
  width: 100%;
  line-height: 20px;
  font-size: 12px;
  color: #333;
  text-align: center;
}
.app-home .mui-table-view .mui-media img{
  width: 60px;
  height: 60px;
}
.app-home .mui-table-view li{
  background: #fff;
}
.mui-bar-tab .mui-tab-item.mui-active{
  color :#ff4c39;
}
</style>
