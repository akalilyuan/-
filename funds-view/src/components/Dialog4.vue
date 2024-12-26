<!--
 * @Author: yuanjuntao yuanjuntao@yuanjuntao.com
 * @Date: 2024-04-20 18:12:37
 * @LastEditors: yuanjuntao yuanjuntao@yuanjuntao.com
 * @LastEditTime: 2024-04-20 18:35:19
 * @FilePath: \funds-view\src\components\Dialog4.vue
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
<template>
  <div class="dialog">
    <el-dialog :title="dialog.title" v-model="dialog.show">
      <div class="form">
        <el-form
          ref="form"
          :model="formData"
          :rules="form_rules"
          labe-width="120px"
          style="margin: 10px; width: auto"
        >

          <el-form-item prop="type" label="公告标题:" label-width="140px">
            <el-input type="type" v-model="formData.type"></el-input>
          </el-form-item>

          <el-form-item prop="income" label="公告内容:" label-width="140px">
            <el-input type="income" v-model="formData.income"></el-input>
          </el-form-item>

          <el-form-item prop="expenditure" label="发布时间:" label-width="140px">
            <el-input
              type="expenditure"
              v-model="formData.expenditure"
            ></el-input>
          </el-form-item>

          <el-form-item class="text_right" label-width="140px">
            <el-button @click="dialog.show = false">取消</el-button>
            <el-button type="primary" @click="onSubmit(form)">提交</el-button>
          </el-form-item>
        </el-form>
      </div>
    </el-dialog>
  </div>
</template>

<script setup>
import { ref, reactive, getCurrentInstance, defineEmits } from "vue";
const { proxy } = getCurrentInstance();
const emits = defineEmits(["sendMsg"]);
const props = defineProps({
  dialog: Object,
  formData: Object,
});

const form = ref(null);


const form_rules = reactive({
  income: [{ required: true, message: "公告内容不能为空!", trigger: "blur" }],
  expenditure: [{ required: true, message: "发布时间不能为空!", trigger: "blur" }],
  type: [{ required: true, message: "公告标题不能为空!", trigger: "blur" }],
});

const onSubmit = (form) => {
  form.validate((valid) => {
    if (valid) {
      const url =
        props.dialog.option == "add" ? "add4" : `edit4/${props.formData.id}`;
      proxy.$axios.post(`/funds4/${url}`, props.formData).then((res) => {
        // 编辑成功
        if (props.dialog.option == "edit") {
          proxy.$message({ message: "数据更新成功", type: "success" });
        } else {
          // 添加成功
          proxy.$message({ message: "数据添加成功", type: "success" });
        }
        // 隐藏dialog
        props.dialog.show = false;
        // 数据添加后 需要自己刷新 显然不合理
        // this.$emits('update') vue3 setup语法糖不是这样写
        emits("update");
      });
    }
  });
};
</script>

<style lang="less" scoped></style>
