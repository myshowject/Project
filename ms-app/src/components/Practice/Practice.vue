<template>
  <div class="app-practice">
    <mt-header fixed>
      <router-link to="/" slot="left" class="icon1">
        <mt-button icon="back">美食节</mt-button>
      </router-link>
      <mt-button icon="search" slot="right" class="icon2"></mt-button>
      <router-link to="/" slot="right" class="icon1">
        <mt-button icon="">菜谱分类</mt-button>
      </router-link>
    </mt-header>

    <div class="mui-card">
      <div class="mui-card-header mui-card-media" style="height:60vw;background:url(http://127.0.0.1:8000/img/app/practice/practiceA-10.jpg) 65% 70%  no-repeat;">
      </div>
				<div class="mui-card-content">
					<div class="mui-card-content-inner">
						<h3>芙蓉蛋卷</h3>
						<p class="sizep">1103人收藏　34321人浏览</p>
            <div class="acolor">
              <a href="javascript:;">下奶</a>
            </div>
					</div>
				</div>
		</div>
    <ul class="mui-table-view">
      <li class="mui-table-view-cell mui-media">
        <a href="javascript:;">
          <img class="mui-media-object mui-pull-left" src="http://127.0.0.1:8000/img/app/practice/user1.jpg">
          <div class="mui-media-body">
            <strong class="str1">孔老师教做菜</strong>
            <span>发布308篇菜谱</span>  
          </div>
        </a>
      </li>
    <button class="btn1">关注</button>
    </ul>
    <div class="mui-card ">
      <div class="mui-card-content bg_color">
        <div class="mui-card-content-inner padd">
          为孩子做早餐，既要好看又要好吃，更要营养，这道早餐芙蓉蛋卷就能完美的满足了所有要求！金灿灿的蛋卷包裹着鲜嫩的虾糜，不仅色...
        </div>
      </div>
    </div>
    <div class="mui-card bordetop">
      <div class="mui-card-content bg_color">
        <div class="mui-card-content-inner padd padd1">
          <span class="score">评分</span>
          <div class="star">
            <div class="star-after" style="width:50%">
              <i class="icon iconfont icon-pingjiaxing start_after"></i>
              <i class="icon iconfont icon-pingjiaxing start_after"></i>
              <i class="icon iconfont icon-pingjiaxing start_after"></i>
              <i class="icon iconfont icon-pingjiaxing start_after"></i>
              <i class="icon iconfont icon-pingjiaxing start_after"></i>
            </div>
            <div class="star-before" >
              <i class="icon iconfont icon-pingjiaxing start-before"></i>
              <i class="icon iconfont icon-pingjiaxing start-before"></i>
              <i class="icon iconfont icon-pingjiaxing start-before"></i>
              <i class="icon iconfont icon-pingjiaxing start-before"></i>
              <i class="icon iconfont icon-pingjiaxing start-before"></i>
            </div>  
          </div>
          <ul class="prac">
            <li>
              <i class="icon iconfont icon-chushimao"></i>
              <span>煮</span>
            </li>
            <li>
              <i class="icon iconfont icon-shuiping-copy"></i>
              <span>咸鲜味</span>
            </li>
            <li>
              <i class="icon iconfont icon-clock"></i>
              <span>&lt;10分钟</span>
            </li>
            <li>
                <i class="icon iconfont icon-clock"></i>
                <span>&lt;10分钟</span>
              </li>
          </ul>
          <div class="both">
           <strong>主料</strong> 
            <span>2人份</span>
            <p>
              <a href="javascript:;">鲜虾</a><span>12只、</span>
              <a href="javascript:;">胡萝卜</a><span>1根 、</span>
              <a href="javascript:;">鸡蛋</a><span>3个</span>
            </p>
            <strong>辅料</strong> 
            <p>
              <a href="javascript:;">盐</a><span>适量、</span>
              <a href="javascript:;">食用油</a><span>少许、</span>
              <a href="javascript:;">料酒</a><span>少许</span>
            </p>
          </div>
         
        </div>
        <h4 class="stetitle">芙蓉蛋卷</h4>
         <ul class="steps">
            <li>
              <span>步骤1</span>
              <img src="http://127.0.0.1:8000/img/app/practice/practiceA-1.gif" alt="">
              <p>胡萝卜去皮，切小碎丁</p>
            </li>
            <li>
              <span>步骤2</span>
              <img src="http://127.0.0.1:8000/img/app/practice/practiceA-1.gif" alt="">
              <p>胡萝卜去皮，切小碎丁</p>
            </li>
          </ul>
          <div class="finished">
            <span>芙蓉蛋卷成品图</span>
            <div class="finishedb">
              <img src="http://127.0.0.1:8000/img/app/practice/practiceA-10.jpg" alt="" v-if="opac==1">
              <img src="http://127.0.0.1:8000/img/app/practice/practiceA-11.jpg" alt="" v-else-if="opac==0.4">
            </div>
          </div>
          <div class="preview">
            <div class="img">
              <img src="http://127.0.0.1:8000/img/app/practice/practiceA-10.jpg" alt="" :class="opac==1?'':'opac'"> 
            </div> 
          </div>
          <div class="skills">
            <span>烹饪技巧</span>
            <p>TIPS</p>
            <p>1/  蒸制时间需根据蛋卷的数量和肉馅的多少适度调整</p>
            <p>2/ 最好用鲜虾来制作虾糜，如果没有也可用超市的冷冻虾仁</p>
          </div>
          <div class="time_show">
            原创菜谱创建时间：2019-01-13 14:01:01
          </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        id:this.$route.query.id,
        opac:1
      }
    },
    methods: {
    
    },
  }
</script>
<style scoped>
  /* .app-practice{
    padding-top: 40px;
    padding-bottom: 40px;
  } */
  .icon-pingjiaxing{
    color: #f7b52c;/*#f0e3c8*/
    font-size: 21px;
    margin-right: 2px;
  }
  .icon-chushimao,.icon-shuiping-copy,.icon-clock{
    font-size: 20px;
  }

  .start-after{
    color: #f7b52c;
  }
  .start-before{
    color: #f0e3c8;
  }
  .app-practice .mui-card{
    margin: 0;
  }
  .btn1{
    position: absolute;
    left: 300px;
    top: 16px;
    width: 60px;
    height: 30px;
    border-color: #ff4c39;
    color: #ff4c39;
    border-radius:20px; 
  }
  .app-practice .mui-card .mui-card-content{
    background: #fff4d6;
  }
  .app-practice .mui-card .mui-card-content.bg_color{
    background: #fff;
  }
  .app-practice .mui-card .mui-card-header:after,.mui-card-footer:before,.mui-table-view:after,.mui-table-view-cell:after{
    height: 0 !important;
  }
  .app-practice .mui-table-view:before{
    height: 0 !important;
  }
  .sizep{
    font-size: 12px;
    line-height: 20px;
    font-weight: 400;
    color: #666;
    margin-top: 10px;
  }
  /* .acolor{
    display: flex;
    flex-wrap: wrap;
  } */
  .acolor a{
    font-size: 12px;
    margin-right: 10px; 
    color: #eaa46e;
    text-decoration: underline;
  }
  
  .mui-card-content-inner.padd{
    font-weight: 300;
    color: #666;
    text-align: justify;
    padding: 6px 20px !important;
    font-size: 17px;
    color: #333;
    line-height: 25px;
  }
  .mui-card-content-inner.padd.padd1{
    padding: 20px 20px !important;
  }
  .mui-table-view .mui-media-object{
    line-height: 40px !important;
    max-width: 40px !important;
    height: 40px !important;
    border-radius: 20px;
  }
  .mui-media-body .str1{
    display: block;
    line-height: 22px;
    font-size: 14px;
    color: #666;
    font-weight: 400;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .mui-media-body span{
    display: block;
    line-height: 18px;
    font-size: 12px;
    color: #999;
    font-weight: 400;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .app-practice .mint-header{
    background:transparent !important; 
  }
  .app-practice .mint-header .mint-header-button .icon1 .mint-button.mint-button--default.mint-button--normal{
    height: 30px !important;
    padding: 0 12px !important;
    background: rgba(0,0,0,0.5) !important;
    border-radius:15px !important; 
  }
  .app-practice .mint-header .mint-header-button .icon2{
    right: 20px !important;
    height: 30px !important;
    width: 30px !important;
    border-radius:15px !important; 
    background: rgba(0,0,0,0.5) !important;
  }
  .bordetop{
    border-top: 2px dashed #ccc;
  }
  .score{
    font-size: 16px;
    color: #333;
    font-family: Arial, Helvetica, sans-serif;
    font-weight: 600;
    margin-right: 20px;
  }

  .prac{
    list-style: none;
    margin-top:8px; 
    margin-bottom: 24px;
    padding:0px; 
    width: 70%;
  }
  .prac>li:nth-child(1){
    float: left;
  }
  .prac>li:nth-child(2){
    float: right;
    margin-right: 0px;
  }
  .prac>li:nth-child(3){
    padding-top: 5px;
    float: left;
    clear: both;
  }
  .prac>li:nth-child(4){
    float: right;
    padding-top: 5px;
    margin-right: 0px;
  }
  .prac li span {
    margin-left: 5px;
    font-size: 16px;
  }
  .stetitle{
    text-align: center;
  }
  .both{
    clear: both;
  }
  .steps{
    list-style: none;
    padding: 0;
    width: 100%;
    height: 100%;
  }
  .steps li,.finished{
    text-align: center;
    margin:10px 0 10px 0;
  }
  .steps li span,.finished span,.skills span{
    font-size: 20px;
    font-weight: 500;
  }
  .steps li img,.finished .finishedb{
    margin: 15px 0px 0px;
    width: 100%;
  }
  .steps li p,.skills p{
    padding: 10px 16px ;
    text-align: left;
    font-size: 17px;
    margin-bottom: 0;
    text-align: justify;
  }
  .finishedb{
    overflow: hidden;
    height: 250px;
    position: relative;
  }
  .finished .finishedb img{
    position: absolute;
    width: 100%;
    left: 50%;
    top: 50%;
    transform: translate(-50%,-50%);
  }
  .preview{
    width: 100%;
  }
  .img{
    width: 77px;
    height: 77px;
    margin-left: 10px;
    background: #eee;
    overflow: hidden;
    display: inline-block;
    position: relative;
  }
  .img img{
    width: 100%;
    margin: auto 0;
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
  }
  .opac{
    opacity:0.4;
  }
  .skills{
    padding-left:10px; 
    margin: 40px 0 10px 0;
  }
  .skills p{
    margin-top: 5px;
    color: #333;
    font-weight: 300;
    font-family: helvetica,Microsoft Yahei;
    padding-top: 0;
    padding-bottom: 0;
  }
  .time_show{
    font-size: 12px;
    color: #777777;
    padding: 10px 0 10px 20px;
  }
  .star{
    width: 114px;
    position: absolute;
    top: 20px;
    left: 70px;
  }
  .star-after{
    overflow: hidden;
    position: absolute;
    top: 0;
    left: 0;
  }
  

</style>