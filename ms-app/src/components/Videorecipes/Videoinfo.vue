<template>
  <div class="app-info">
    <mt-header fixed title="菜谱视频大全" >
      <router-link to="/Videorecipes" slot="left">
        <mt-button icon="back">返回</mt-button>
      </router-link>
      <mt-button icon="search" slot="right"></mt-button>
    </mt-header>
    <video src="http://127.0.0.1:8000/video/APP/recipes1.mp4" controls="controls"  width="375" height="210" poster="http://127.0.0.1:8000/img\app\Videorecipes/recipes-1.jpg" preload="metadata"></video>
    <introduce-box></introduce-box>
  </div>
</template>
<script>
  import introduce from '../sub/Introduce.vue'
  export default {
    data() {
      return {
        
      }
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
