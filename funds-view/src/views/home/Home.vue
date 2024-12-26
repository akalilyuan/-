<!--
 * @Author: yuanjuntao yuanjuntao@yuanjuntao.com
 * @Date: 2024-04-06 21:13:36
 * @LastEditors: yuanjuntao yuanjuntao@yuanjuntao.com
 * @LastEditTime: 2024-04-19 16:54:10
 * @FilePath: \funds-view\src\views\home\Home.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>
  <div class="home">
    <div class="container">
      <h1 class="title">社区物业管理系统</h1>
      <p class="lead">
        <!-- LilYuan学习练手，个人独立开发的后台系统，加油，你要学的东西还很多呢！ -->
        <!-- 小袁独立开发物业管理系统 -->
        袁骏滔2006200078网络202毕业设计项目
      </p>
    </div>
  </div>
</template>

<script setup></script>

<style lang="less" scoped>
.home {
  width: 100%;
  height: 100%;
  background-image: linear-gradient(to right, #a8edea 0%, #fed6e3 100%);
  background-size: 100% 100%;

  .container {
    width: 100%;
    height: 100%;
    box-sizing: border-box;
    padding-top: 100px;
    background-color: rgba(0, 0, 0, 0.7);
    text-align: center;
    color: #fff;

    .title {
      font-size: 30px;
    }

    .lead {
      margin-top: 50px;
      font-size: 22px;
    }
  }
}
</style>
