const mongoose = require('mongoose');
const mongoURI = "mongodb+srv://UtsavDesai:Utsav_*_26@cluster0.dasho2p.mongodb.net/?retryWrites=true&w=majority";

const connectToMongo = () =>{
    mongoose.connect(mongoURI, ()=>{
        console.log("Connected to Mongo Successfully");
    })
}

module.exports = connectToMongo;