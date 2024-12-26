/*
 * @Author: yuanjuntao yuanjuntao@yuanjuntao.com
 * @Date: 2024-04-20 18:51:34
 * @LastEditors: yuanjuntao yuanjuntao@yuanjuntao.com
 * @LastEditTime: 2024-04-22 14:00:10
 * @FilePath: \fund-management-api\router\funds_handler3.js
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
const db = require('../db/index')

exports.fundsAdd3 = (req, res) => {
    const fields = {}
    if (req.body.type) fields.type = req.body.type
    if (req.body.description) fields.description = req.body.description
    if (req.body.income) fields.income = req.body.income
    if (req.body.expenditure) fields.expenditure = req.body.expenditure
    if (req.body.account) fields.account = req.body.account
    if (req.body.remark) fields.remark = req.body.remark

    const sql = `insert into funds3 set ?`
    db.query(sql, fields, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('添加失败')
        res.json(fields)
    })
}

exports.fundsAll3 = (req, res) => {
    const sql = `select * from funds3 order by id desc`
    db.query(sql, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.length === 0) return res.status(200).json('查无数据')
        res.json(results)
    })
}

exports.fundsEdit3 = (req, res) => {
    const fields = {}
    if (req.body.type) fields.type = req.body.type
    if (req.body.description) fields.description = req.body.description
    if (req.body.income) fields.income = req.body.income
    if (req.body.expenditure) fields.expenditure = req.body.expenditure
    if (req.body.account) fields.account = req.body.account
    if (req.body.remark) fields.remark = req.body.remark

    const sql = `update funds3 set ? where id = ?`
    db.query(sql, [fields, req.params.id], (err, results) => {
        console.log(req.params.id)
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('编辑失败')
        res.json(fields)
    })
}

exports.fundsDelete3 = (req, res) => {
    const sql = `delete from funds3 where id = ?`
    db.query(sql, req.params.id, (err, results) => {
        if (err) return res.status(400).json(err)
        if (results.affectedRows !== 1) return res.status(400).json('删除失败')
        res.json('删除成功')
    })
}