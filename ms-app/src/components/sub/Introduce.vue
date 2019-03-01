<template>
  <div class="app-introduce">
    <ul class="mui-table-view">
      <li class="mui-table-view-cell mui-media">
        <a href="javascript:;">
          <img class="mui-media-object mui-pull-left imgs-1" src="http://127.0.0.1:8000/img\app\Introduce/timg.png">
          <div class="mui-media-body">
            <p class="name p">
              美食节
              <span>专业原创菜谱视频</span>
            </p>
            <p class='mui-ellipsis p font'>做菜只用美食杰，让做饭更具幸福感！</p>
          </div>
        </a>
      </li>
    </ul>
    <div class="mui-card">
      <div class="mui-card-content">
        <div class="mui-card-content-inner">
          <h3>视频内容</h3>
          <ul>
            <li v-for="item in list " :key="item.id">{{item.practice}}</li>
          </ul>
          <h3>相关视频</h3>
          <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media dashed" v-for="(item,index) in info" :key="item.recid">
              <router-link :to="'/Videoinfo?id='+item.recid" @click.native="recid(index)">
                <img class="mui-media-object mui-pull-left imgs-2" :src="item.pic">
                <div class="mui-media-body">
                  <h4 class="h4">{{item.title}}</h4>
                  <p class='mui-ellipsis p'>{{item.ctime | datatimeFilter}}</p>
                </div>
              </router-link>
              <div class="details">
                <em class="splistbtn">
                  <i></i>
                </em>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        list:[],
        info:[], 
      }
    },
    methods: {
      recid(index){
        var id = this.info[index].recid;
        sessionStorage.setItem("id",id);
      },
      getPractice(){
        var recid = sessionStorage.getItem("id");
        var url = `http://127.0.0.1:8000/appinfo/getPractice?recid=${recid}`;
        this.axios.get(url).then(res=>{
          this.list =res.data.data;
        })
      },
      getNewsInfo(){
        var url = `http://127.0.0.1:8000/appinfo/getInfo` 
        this.axios.get(url).then(res=>{
          this.info = res.data.data;
        })
      },
    },
    created() {
      // console.log(this.id)
      this.getPractice();
      this.getNewsInfo();
    },
    // props:["id"],
    watch: {
      "$route":'getPractice'   
    },
  }
</script>

<style scoped>
  .imgs-1{
    border-radius: 50%;
  }
  .mui-media-body .p{
    margin-top: 0px;
  }
  .name{
    font-size: 13px;
    color: #333;
  }
  .name span{
    margin-left: 9px;
    font-size: 12px;
    padding: 1px 2px 2px;
    border: 1px solid #b2d5f3;
    color: #2a9aff;
    display: inline-block;
    line-height: 1;
  }
  .font{
    font-size: 13px;
    color: #999;
  }
  .mui-card{
    margin: 0 !important;
  }
  .mui-table-view-cell:after{
    left: 0 !important;
  }
  .dashed:after{
    background: transparent !important;
    border-bottom: 1px dashed #c8c7cc !important;
    height: 0 !important;
  }
  .mui-table-view:after{
    background: #fff !important;
  }
  .mui-card-content-inner h3{
    font-size: 16px;
    color: #333;
    margin-bottom: 10px;
    font-weight: bold;
    line-height: 1;
  }
  .mui-card-content-inner p span{
    font-size: 16px;
    color: #333;
  }
  .mui-card-content-inner ul{
    padding: 0;
  }
  .mui-card-content-inner ul li{
    list-style: none;
    font-size: 16px;
    color: #333;
    line-height: 32px;
  }
  .imgs-2{
    max-width: 119px !important;
    height: 67px !important;
  }
  .mui-media a{
    padding-left: 0 !important;
  }
  .splistbtn{
    left: 18%;
  }
  .h4{
    font-style: normal;
    color: #000;
    font-size: 16px;
    font-weight: normal;
    text-align: left;
    letter-spacing: 0;
    max-height: 48px;
    overflow: hidden;
  }
</style>
