/*
 * @Author: lilyuantao 2507567008@qq.com
 * @Date: 2023-09-10 11:24:47
 * @LastEditors: lilyuantao 2507567008@qq.com
 * @LastEditTime: 2023-09-26 14:46:00
 * @FilePath: \fund-management-api\router\funds.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
// 导入express
const express = require('express')
// 创建路由对象
const router = express.Router()

const fundsHandler4 = require('./funds_handler4')

// 新增
router.post('/add4', fundsHandler4.fundsAdd4)
// 查询全部数据
router.get('/allFunds4', fundsHandler4.fundsAll4)

// 编辑
router.post('/edit4/:id', fundsHandler4.fundsEdit4)
// 删除
router.post('/delete4/:id', fundsHandler4.fundsDelete4)

// 向外共享对象
module.exports = router

