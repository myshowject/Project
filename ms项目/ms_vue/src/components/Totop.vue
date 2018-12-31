<template>
    <!-- 跳转到顶部 -->
    <div class="bottom_back_to_top">
      <a href="#" class="backtotop">回到顶部</a>
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
</style>
