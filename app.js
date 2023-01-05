const express = require('express')
const app = express()
const port = 3000
const db = require('./connection')
const response = require('./response')
const bodyParser = require('body-parser')

app.use(bodyParser.json())


//Main Route
app.get('/', (req, res) => {    
    response(200, "Home Route", "Homepage", res)    
})



//Display All Fields
app.get('/menu', (req, res) => {
    const sql = "SELECT * FROM data_salemfood"
    db.query(sql, (error, result) => {
        if (error) throw error
        response(200, result, "Get all data from tabel data salemfood", res)
    })    
})



//Find Specific Food Based On ID
app.get('/find/:id', (req, res) => {
    const id = req.params.id
    const sql = `SELECT * FROM data_salemfood WHERE id_makanan = ${id}`
    db.query(sql, (error, result) => {
        response(200, result, "Find food data", res)
    })
})




//Insert Food Into Database
app.post('/insert', (req, res) => {
    const { nama, deskripsi, gambar, harga, rating, jumlah} =  req.body
    const sql = `INSERT INTO data_salemfood (nama, deskripsi, gambar, harga, rating, jml_beli) VALUES ( '${nama}', '${deskripsi}', '${gambar}', ${harga}, ${rating}, ${jumlah} )`
    db.query(sql, (error, result) => {
        if (error) response(500, "Invalid Operation", "Error", res)
        if (result?.affectedRows){
            const data = {
                isSuccess: result.affectedRows,
                id: result.insertId
            }
            response(200, data, "Successfully Added", res)
        } else {
            console.log("Data unsuccessfully added")
        }
    })
})



//Change Food Data In Database
app.put('/update', (req, res) => {
    const { id, nama, deskripsi, gambar, harga, rating, jumlah } = req.body
    const sql = `UPDATE data_salemfood SET nama = '${nama}', deskripsi = '${deskripsi}', gambar = '${gambar}', harga = ${harga}, rating = ${rating}, jml_beli = ${jumlah} WHERE id_makanan = ${id} `
    db.query(sql, (error,result) => {
        if (error) response(500, "Invalid", "Error", res)
        if (result?.affectedRows) {
            const data = {
                isSuccess: result.affectedRows,
                message: result.message
            }
            response(200, data, "Update Data Success", res)
        } else {
            response(500, "Error", "Check data inserted", res)
        }        
    })     
})


//Delete Food From Database
app.delete("/delete", (req, res) => {
    const { id } = req.body
    const sql = `DELETE FROM data_salemfood WHERE id_makanan = ${id}`
    db.query(sql, (error, result) => {
        if (error) response (500, "Invalid Operation", "Failed", res)
        if (result?.affectedRows) {
            const data = {
                isDeleted: result.affectedRows
            }
            response(200, data, "Delete Successfull", res)
        } else {
            response(400, "Invalid Operation", "Error", res)
        }  
    })
})




app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})
