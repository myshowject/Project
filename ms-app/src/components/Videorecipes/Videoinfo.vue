<template>
  <div class="app-info">
    <mt-header fixed title="菜谱视频大全" >
      <router-link to="/Videorecipes" slot="left">
        <mt-button icon="back">返回</mt-button>
      </router-link>
      <mt-button icon="search" slot="right"></mt-button>
    </mt-header>
    <video src="http://127.0.0.1:8000/video/APP/recipes1.mp4" controls="controls"  width="375" height="210" poster="http://127.0.0.1:8000/img\app\Videorecipes/recipes-1.jpg" preload="metadata" @canplay="timeupdate($event)"></video>
    <ul class="mui-table-view">
      <li class="mui-table-view-cell mui-media">
        <a href="javascript:;">
          <div class="mui-media-body">
            <h3>左宗棠鸡的做法</h3> 
            <p class='mui-ellipsis'>
              <span>时长：{{duration | dtimeFilter}}</span>&nbsp;&nbsp;&nbsp;&nbsp;
              <span>发布时间：2018-11-03</span>
            </p>
          </div>
        </a>
      </li>
    </ul>
    <introduce-box></introduce-box>
  </div>
</template>
<script>
  import introduce from '../sub/Introduce.vue'
  export default {
    data() {
      return {
        duration:''
      }
    },
    methods: {
      timeupdate(event){
        this.duration = event.target.duration;
        this.$root.Bus.$emit("send",this.duration);
        // console.log(this.duration)
      }
    },
    created() {
       
    },
    components:{
      "introduce-box": introduce
    }
  }
</script>
<style>
  .app-info{
    padding-top: 44px;
    padding-bottom: 44px;
  }
  .app-info .mint-header{
    background-color:rgba(255,255,255,0.95);
    height: 44px;
  }
  .app-info .mint-header-button{
    color:red;
  }
  .app-info .mint-header-title{
    color:#000;
  }
</style>
