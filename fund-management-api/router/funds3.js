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

const fundsHandler3 = require('./funds_handler3')

// 新增
router.post('/add3', fundsHandler3.fundsAdd3)
// 查询全部数据
router.get('/allFunds3', fundsHandler3.fundsAll3)

// 编辑
router.post('/edit3/:id', fundsHandler3.fundsEdit3)
// 删除
router.post('/delete3/:id', fundsHandler3.fundsDelete3)

// 向外共享对象
module.exports = router

