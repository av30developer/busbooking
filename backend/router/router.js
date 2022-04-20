var express=require('express')
const router=express.Router()
const controller=require('../controller/controller') //import controller from controller folder

router.get("/getlist",controller.getSeatList) //for fetch the seat list
router.post("/bookseat",controller.BookSeat)//booking api


module.exports=router