/*
 * @Author: lilyuantao 2507567008@qq.com
 * @Date: 2023-09-10 11:24:46
 * @LastEditors: yuanjuntao yuanjuntao@yuanjuntao.com
 * @LastEditTime: 2024-04-07 20:47:03
 * @FilePath: \project\fund-management-api\db\index.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
// 导入mysql模块
const mysql = require('mysql')

// 创建数据库连接对象
const db = mysql.createPool({
    host: '127.0.0.1',
    user: 'root',
    password: '123',
    database: 'demo'
})

// 向外共享db数据库连接对象
module.exports = db