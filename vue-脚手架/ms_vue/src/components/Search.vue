<template>
  <div id="ms-search">
    <div class="main_search">
      <div class="main_search_w">
        <div class="search_body">
          <input type="text" class="text" placeholder="输入菜谱、食材、作者">
          <input type="submit" class="submit" value="搜 索">
        </div>
        <span class="search_btn" style="background-position: 0px 0px;">自动收缩</span>
      </div>
    </div>


  <!-- 跳转到顶部 -->
    <div class="bottom_back_to_top">
      <a href="#" class="backtotop">回到顶部</a>
    </div>
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
  /* search 固定定位 */
.main_search{
  width: 100%;
  height: 60px;
  background: url(../../public/img/section/black75.png) repeat;
  position: fixed;
  bottom: 0px;
  left: 0px;
  z-index: 600;
}
.main_search_w{
  width: 990px;
  height: 60px;
  margin: 0 auto;
  position: relative;
}
.search_body{
  width: 600px;
  height: 48px;
  margin: 6px auto;
  background-color: #fff;
  position: relative;
  overflow: hidden;
}
input.text{
  width: 452px;
  height: 20px;
  border: none;
  background: #fff;
  padding: 14px;
  font-size: 14px;
  color: #333;
  line-height: 20px;
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
}
input.submit{
  position: absolute;
  width: 121px;
  height: 48px;
  color: #fff;
  font-size: 14px;
  background: #ff3232;
  border: none;
  font-weight: bold;
  right: 0;
  top: 0;
}
.search_btn{
  width: 48px;
  height: 48px;
  position: absolute;
  top: 0px;
  left: 1px;
  text-indent: -9999px;
  background: url(../../public/img/section/to_top/search_btn.png) 0px 0px no-repeat;
  z-index: 600;
}
.bottom_back_to_top{
  width: 48px;
  height: 178px;
  z-index: 600;
  position: fixed;
  bottom: 6px;
  left: 1454px;
  opacity: 1;
}
.backtotop{
  width: 48px;
  height: 48px;
  text-indent: -9999px;
  background: url(../../public/img/section/to_top/backtotop_icon.png) 0px 0px no-repeat;
  z-index: 600;
  position: absolute;
  bottom: 0px;
  right: 0px;
}

/*  */
</style>
