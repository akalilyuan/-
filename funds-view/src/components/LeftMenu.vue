<!--
 * @Author: yuanjuntao yuanjuntao@yuanjuntao.com
 * @Date: 2024-04-06 21:13:36
 * @LastEditors: yuanjuntao yuanjuntao@yuanjuntao.com
 * @LastEditTime: 2024-04-27 00:45:07
 * @FilePath: \funds-view\src\components\LeftMenu.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>
  <el-row class="tac menu">
    <el-col>
      <el-menu
        active-text-color="#4091ff"
        background-color="#324057"
        class="el-menu-vertical-demo"
        text-color="#fff"
      >
        <router-link to="/home">
          <el-menu-item index="0">
            <i class="iconfont icon-shouye1"></i>
            <span>首页</span>
          </el-menu-item>
        </router-link>

        <template v-for="item in items">
          <el-sub-menu v-if="item.children" :index="item.path" :key="item.path">
            <template #title>
              <i :class="`iconfont  ${item.icon}`"></i>
              <span slot="title">{{ item.name }}</span>
            </template>
            <router-link
              v-for="(citem, cindex) in item.children"
              :to="citem.path"
              :key="cindex"
            >
              <el-menu-item :index="citem.path">
                <span slot="title">{{ citem.name }}</span>
              </el-menu-item>
            </router-link>
          </el-sub-menu>
        </template>
      </el-menu>
    </el-col>
  </el-row>
</template>

<script setup>
import { reactive } from "vue";
import { useStore } from "vuex";
// import { computed,onMounted } from "vue";
const store = useStore();
// console.log("123")
// console.log(store.getters.user.identify)
// if(1){
//   console.log("111")
// }
// const user = computed(() => {
//   return store.getters.user;
// });
// onMounted(() => {
//   getProfile();
// });
// const getProfile = () => {
//  console.log(user.identify)
//  console.log('11211')
// };
const items = reactive([
  // {
  //   icon: "icon-weibiaoti1",
  //   name: "资金管理",
  //   path: "fund",
  //   children: [
  //     {
  //       path: "fundlist",
  //       name: "资金流水",
  //     },
  //   ],
  // },
  {
    icon: "icon-weibiaoti1",
    name: "物业管理",
    path: "fund1",
    children: [
      {
        path: "fundlist1",
        name: "物业维修",
      },
      {
        path: "fundlist2",
        name: "公共物业租用",
      },
      {
        path: "fundlist3",
        name: "物业缴费",
      },
    ],
  },
  {
    icon: "icon-weibiaoti1",
    name: "公告管理",
    path: "fund2",
    children: [
      {
        path: "fundlist4",
        name: "物业公告",
      },
    ],
  },
  {
    icon: "icon-jichuxinxiguanli",
    name: "信息管理",
    path: "info",
    children: [
      {
        path: "infoshow",
        name: "个人信息",
      },
    ],
  },
]);
// if(user.identify == '超级管理员'){
//   console.log('1');
// }
if(store.getters.user.identify === '超级管理员'){
  console.log(items);
  items.push({
    icon: "icon-weibiaoti1",
    name: "物业维修情况统计",
    path: "fund5",
    children: [
      {
        path: "fundlist5",
        name: "物业维修情况统计",
      },
    ],
  },);
  console.log(items);
}
</script>

<style lang="less" scoped>
.menu {
  border: none;
  width: 200px;
  height: 100%;
  position: fixed;
  .el-menu {
    height: 100%;
  }
}
</style>
