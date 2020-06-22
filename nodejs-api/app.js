const express = require('express'); 
const app = express();
app.get('/',function(req,res){
    res.status(200).send(JSON.stringify({
        result:"200",
        message:"api get çalıştı"
    }))
     
})
app.post('/',function(req,res){
    res.status(200).send(JSON.stringify({
        result:"200",
        message:"api post çalıştı"
    }))
})
app.listen(process.env.PORT || 8080 ,()=>{
   console.log("app çalıştı");
    
});