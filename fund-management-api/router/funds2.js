/*
 * @Author: lilyuantao 2507567008@qq.com
 * @Date: 2023-09-10 11:24:47
 * @LastEditors: yuanjuntao yuanjuntao@yuanjuntao.com
 * @LastEditTime: 2024-04-22 14:19:43
 * @FilePath: \fund-management-api\router\funds.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
// 导入express
const express = require('express')
// 创建路由对象
const router = express.Router()

const fundsHandler2 = require('./funds_handler2')

// 新增
router.post('/add2', fundsHandler2.fundsAdd2)
// 查询全部数据
router.get('/allFunds2', fundsHandler2.fundsAll2)

// 编辑
router.post('/edit2/:id', fundsHandler2.fundsEdit2)
// 删除
router.post('/delete2/:id', fundsHandler2.fundsDelete2)

// 向外共享对象
module.exports = router

