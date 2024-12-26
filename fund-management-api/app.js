// 导入express模块
const express = require('express')
// 导入expressd的服务器实例
const app = express()

app.get("/",(req,res)=>{
res.send("hello world");
})

// 导入 cors 中间件
const cors = require('cors')
// 将 cors 注册为全局中间件
app.use(cors())

const bodyParser = require('body-parser')
// 使用body-parse中间件 要放在路由之前
app.use(bodyParser.json())
// 配置解析 application/x-www-form-urlencoded 格式的表单数据的中间件
app.use(express.urlencoded({ extended: false }))

// 处理管理员(&用户)登录注册相关的路由
const adminRouter = require('./router/admin')
app.use('/api/admin', adminRouter)

// 导入并使用用户信息路由模块
const userinfoRouter = require('./router/userinfo')
app.use('/api/user', userinfoRouter)

const fundsRouter = require('./router/funds')
app.use('/api/funds', fundsRouter)

const fundsRouter1 = require('./router/funds1')
app.use('/api/funds1', fundsRouter1)

const fundsRouter2 = require('./router/funds2')
app.use('/api/funds2', fundsRouter2)

const fundsRouter3 = require('./router/funds3')
app.use('/api/funds3', fundsRouter3)

const fundsRouter4 = require('./router/funds4')
app.use('/api/funds4', fundsRouter4)

const mallRouter = require('./router/mall')
app.use('/api/mall', mallRouter)

const phoneRouter = require('./router/phone')
app.use('/api/', phoneRouter)

// 调用app.listen方法，指定端口号并启动web服务器
app.listen(3000, () => {
    console.log(`api server running at http://127.0.0.1:3000`)
})