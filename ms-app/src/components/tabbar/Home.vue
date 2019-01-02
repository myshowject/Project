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
    <div class="adsad">
    <mt-swipe :auto="2500">
      <mt-swipe-item v-for="item of list" :key="item.id"><img :src="item.pic" ></mt-swipe-item>
    </mt-swipe>
    </div>
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
          <img src="http://127.0.0.1:8000/img/app/home/zaocan.png">
          <div class="mui-media-body">早餐</div>
        </a>

      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
        <a href="#">
          <img src="http://127.0.0.1:8000/img/app/home/fujin.png">
          <div class="mui-media-body">附近</div>
        </a>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
        <a href="#">
          <img src="../../img/menu5.png">
          <div class="mui-media-body">Search</div>
        </a>
      </li>
      <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
        <a href="#">
          <img src="../../img/menu6.png">
          <div class="mui-media-body">Phone</div>
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
        list:[],
        value:''
      }
    },
    created() {
      var url = "http://127.0.0.1:8000/apphome/swipe"
      this.axios.get(url).then(res=>{
        this.list = res.data
        // console.log(this.list)
      })
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
/* .search {
  position: relative;
  width: 13px;
  height: 13px;
  top: -20px;
  left: 122px;
} */
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
  height: 200px;
}
.app-home .mint-swipe img{
  width: 100%;
  height: 80%;
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
