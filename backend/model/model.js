//Used Indexing on catgeory Column

const db = require('../connection') //import connection from connection file
module.exports = {
    fetchSeat: async () => {
        let q = `select * from tbl_seat`;
        let result = await dbQueryExecute(q)
        return result
    },
    reserveSeat: async (totalseat) => {
        var newArr = []
        var row1 = await dbQueryExecute(`select * from tbl_seat where (category='row1' ||  category='row2' || category='row3'|| category='row4'|| category='row5'|| category='row6' || category='row7' || category='row8' || category='row9' || category='row10' || category='row11' || category='row12' ) && reserve_status=0`)
        if (row1.length == 0) {
            return newArr = []
        } else {
            for (let i = 0; i < totalseat; i++) {
                let selectRes = await dbQueryExecute(`select * from tbl_seat where id=${row1[i].id}`)
                let updateRes = await dbQueryExecute(`update tbl_seat set reserve_status=1 where id=${row1[i].id}`)
                var newobj = {
                    "seat": selectRes[0].seat,
                    "category": selectRes[0].category
                }
                newArr.push(newobj)
            }
            return newArr
        }

    }
}

function dbQueryExecute(query) {
    return new Promise((resolve, reject) => {
        db.query(query, (err, success) => {
            if (err) {
                reject(err)
            }
            else {
                resolve(success)
            }
        })
    })
}