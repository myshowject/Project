<template>
  <div class="app-news">
    <mt-header fixed title="菜谱视频大全" >
      <router-link to="/" slot="left">
        <mt-button icon="back">主页</mt-button>
      </router-link>
      <mt-button icon="search" slot="right"></mt-button>
    </mt-header>
    <ul class="mui-table-view">
      <li class="mui-table-view-cell mui-media" v-for="item of list" :key="item.recid">
        <router-link :to="'/Videoinfo?id='+item.recid">
          <img class="mui-media-object mui-pull-left" :src="item.pic">
          <div class="mui-media-body">
           {{item.title}}
            <p class='mui-ellipsis'>
              <span>{{item.ctime | datatimeFilter}}</span>
              <span>点击：{{item.point}}次</span>
            </p>
          </div>
        </router-link>
        <div class="details">
          <em class="splistbtn">
            <i></i>
          </em>
        </div>
      </li>
    </ul>
  <mt-button size="large" @click="recipes">{{content}}</mt-button>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        list:[],
        pageIndex:0,
        pageSize:4,
        pageCount:1,
        content:'加载更多'
      }
    },
    created(){
      this.recipes();
    },
    methods:{
      recipes(){
        this.pageIndex ++;
        var pno = this.pageIndex;
        var ps = this.pageSize;
        var hasMore = this.pageIndex <= this.pageCount;
        if(!hasMore){
          this.content = "没有更多数据了";
          return;
        } 
        this.axios.get("http://127.0.0.1:8000/apprecipes/getRecipes?pno="+pno+"&pageSize="+ps).then(res=>{
          var  rows = this.list.concat(res.data.data);
          this.list = rows;
          console.log(this.list)
          this.pageCount = res.data.pageCount;  
        })
      }
    }
  }
</script>
<style>
  .app-news{
    padding-top: 44px;
    padding-bottom: 44px;
  }
  .app-news .mint-header{
    background-color:rgba(255,255,255,0.95);
    height: 44px;
  }
  .app-news .mint-header-button{
    color:red;
  }
  .app-news .mint-header-title{
    color:#000;
  }
  .app-news .mui-ellipsis{
    display: flex;
    font-size: 12px;
    color: #226aff;
    justify-content:space-between;
  }
  .app-news .mui-media{
    height: 120px;
  }
  .app-news .mui-media img{
    height: 100px;
    max-width: 180px;
  }
  .app-news .mui-media .mui-media-body{
    height: 104px;
  }
  .mui-table-view-cell p{
    margin-top: 10px;
  }
  .splistbtn {
    display: block;
    position: absolute;
    top: 50%;
    left: 26%;
    z-index: 0;
    width: 32px;
    height: 32px;
    margin: -11px 0 0 -11px;
    border-radius: 50%;
    background-color: rgba(0,0,0,.4);
    overflow: hidden;
  }
  .splistbtn i {
    position: relative;
    display: block;
    width: 32px;
    height: 32px;
  }
  .splistbtn i::after{
    position: absolute;
    top: 9px;
    left: 12px;
    content: " ";
    width: 0;
    height: 0;
    border-top: 7px solid transparent;
    border-bottom: 7px solid transparent;
    border-left: 9px solid #fff;
  }
</style>
