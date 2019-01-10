<template>
  <div class="app-info">
    <mt-header fixed title="视频介绍" >
      <router-link to="/Videorecipes" slot="left">
        <mt-button icon="back">返回</mt-button>
      </router-link>
      <mt-button icon="search" slot="right"></mt-button>
    </mt-header>
    <video :src="list.video" controls="controls"  width="375" height="210" :poster="list.pic" preload="metadata" @canplay="timeupdate($event)"></video>
    <ul class="mui-table-view">
      <li class="mui-table-view-cell mui-media">
        <a href="javascript:;">
          <div class="mui-media-body">
            <h3>{{list.title}}</h3> 
            <p class='mui-ellipsis'>
              <span>时长：{{duration | dtimeFilter}}</span>&nbsp;&nbsp;&nbsp;&nbsp;
              <span>发布时间：{{list.ctime | datatimeFilter}}</span>
            </p>
          </div>
        </a>
      </li>
    </ul>
    <introduce-box :id=id></introduce-box>
  </div>
</template>
<script>
  import introduce from '../sub/Introduce.vue'
  export default {
    data() {
      return {
        duration:'',
        id:this.$route.query.id,
        list:[],
        
      }
    },
    methods: {
      timeupdate(event){
        this.duration = event.target.duration;
        // this.$store.commit("in",this.duration);
        // console.log(this.duration)
      },
      getNewsInfo(){
        var id = this.id;
        var url = `http://127.0.0.1:8000/appinfo/getNewsInfo?id=${id}` 
        this.axios.get(url).then(res=>{
          this.list = res.data.data;
            // console.log(this.list)
        })
      }
    },
    created() {
       this.getNewsInfo();
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
