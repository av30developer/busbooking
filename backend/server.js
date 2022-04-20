const express=require('express')
const cors=require('cors')
const app=express()
const route=require('./router/router')
app.use(cors())
app.use(express.json())
const PORT=2300

app.use("/booking",route)

app.listen(PORT,()=>{
    console.log(`Server is running on PORT ${PORT}`)
})