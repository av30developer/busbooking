const model = require('../model/model') //import model from model folder

module.exports = {
    getSeatList:async (req, res) => {
        try {
            let result =await model.fetchSeat()
            res.send({ responseCode: 200, response: result })
        } catch (error) {
            res.send({responseCode:500,response:error})

        }
    },
    BookSeat:async(req,res)=>{
        try {
            let result=await model.reserveSeat(req.body.no_of_seat)
            res.send({responseCode:200,response:result})
        } catch (error) {
            res.send({responseCode:500,response:error})
            
        }
    }
}