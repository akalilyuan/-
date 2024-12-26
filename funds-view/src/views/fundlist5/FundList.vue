<!--
 * @Author: yuanjuntao yuanjuntao@yuanjuntao.com
 * @Date: 2024-04-26 23:43:33
 * @LastEditors: yuanjuntao yuanjuntao@yuanjuntao.com
 * @LastEditTime: 2024-04-27 12:29:39
 * @FilePath: \funds-view\src\views\fundlist5\FundList.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>
  <div>
    <div ref="echartsContainer" style="width: 600px; height: 400px; margin-left: 600px;"></div>
  </div>
 
</template>
 
<script>
import * as echarts from 'echarts';
import {getCurrentInstance,ref} from "vue";
 
export default {
  name: 'EChartsComponent',
  mounted() {
    // 初始化图表
    var myChart = echarts.init(this.$refs.echartsContainer);
    const { proxy } = getCurrentInstance();
    let arry = ref([]);
    const getProfile = (arry) => {
  // 获取表格数据
  proxy.$axios
    .get("/funds1/allFunds1")
    .then((res) => {
      console.log(res.data);
      arry.value=res.data;
      console.log(res.data.filter(item => item.type == 'A区').length);
      let anum=res.data.filter(item => item.type == 'A区').length;
      let bnum=res.data.filter(item => item.type == 'B区').length;
      let cnum=res.data.filter(item => item.type == 'C区').length;
      console.log(anum,bnum,cnum);
      let ads=[anum,bnum,cnum];
      console.log(ads);
        // 指定图表的配置项和数据
    var option = {
      title: {
        text: '物业维修情况统计'
      },
      tooltip: {},
      xAxis: {
        data: ["A区","B区","C区"]
      },
      yAxis: {},
      series: [{
        name: '维修数',
        type: 'bar',
        data: [anum,bnum,cnum]
      }]
    };
    console.log(option);
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
      return res.data;
    })
    .catch((err) => {
      console.log(err);
    });
};
getProfile(arry);
let ads=getProfile();
console.log('41')
console.log(arry.value);
console.log(Array.isArray(arry.value));
// let fe = arry.value.filter((item)=function (){
// 				return (item.type=='A区' )
// 			});
let aky=arry.value;
console.log('42')
console.log(ads)
let arr4 = aky.filter(item=>item.type === "A区")
console.log('43')
			console.log(arr4);
      console.log('44')
console.log(arry.value.filter(item => item.type == 'A区'));

  }
}
</script>
<style lang="less" scoped>
.funds-list {
  margin-left: 600px;
  padding: 16px;
  box-sizing: border-box;}
  </style>
