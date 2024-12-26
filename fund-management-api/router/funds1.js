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

const fundsHandler1 = require('./funds_handler1')

// 新增
router.post('/add1', fundsHandler1.fundsAdd1)
// 查询全部数据
router.get('/allFunds1', fundsHandler1.fundsAll1)

// 编辑
router.post('/edit1/:id', fundsHandler1.fundsEdit1)
// 删除
router.post('/delete1/:id', fundsHandler1.fundsDelete1)

// 向外共享对象
module.exports = router

