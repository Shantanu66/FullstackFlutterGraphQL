const mongoose=require('mongoose')
const mongoose_schema=mongoose.Schema


const idcardSchema= mongoose_schema({
    title:String,
    description:String,
    cardnumber:String,
    DOB:String,
    holderId:String
})
module.exports=mongoose.model("Idcard",idcardSchema)