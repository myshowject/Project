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
            <li>1、鸡腿肉280g切丁，姜片5g，蒜末5g，小米椒适量切段，甜椒20g切块</li>
            <li>2、倒入鸡腿肉，蛋黄一个，盐2g，玉米淀粉25g，搅拌均匀</li>
            <li>3、放入白砂糖15g，白醋15g，生抽8g，淀粉5g，辣椒油10g搅拌均匀</li>
            <li>4、起锅倒入食用油200ml，大火烧至七成熟，放入鸡肉，大火炸至表面金黄</li>
            <li>5、另起锅倒入食用油5ml，倒入姜片，蒜末，小米椒，大火爆香</li>
            <li>6、倒入鸡肉，翻炒均匀，倒入调料 翻炒均匀，倒入甜椒</li>
          </ul>
          <h3>视频内容</h3>
          <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media dashed">
              <a href="javascript:;">
                <img class="mui-media-object mui-pull-left imgs-2" src="http://127.0.0.1:8000/img\app\Introduce/introduce-1.jpg">
                <div class="mui-media-body">
                  <h4 class="h4">凉粉的做法视频</h4>
                  <p class='mui-ellipsis p'>2018-10-22</p>
                </div>
              </a>
              <div class="details">
                <em class="splistbtn">
                  <i></i>
                </em>
              </div>
            </li>
            <li class="mui-table-view-cell mui-media dashed">
              <a href="javascript:;">
                <img class="mui-media-object mui-pull-left imgs-2" src="http://127.0.0.1:8000/img\app\Introduce/introduce-1.jpg">
                <div class="mui-media-body">
                  <h4 class="h4">凉粉的做法视频</h4>
                  <p class='mui-ellipsis p'>2018-10-22</p>
                </div>
              </a>
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
        
      }
    },
    created() {
      // console.log(this.duration);
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
