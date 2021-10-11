//adding express dependency
const express=require('express')
//object i can use to interact with nodejs,express,js,etc
const { graphqlHTTP }=require('express-graphql')
const schema=require('./schema/schema')
const schema = require('./schema/schema')
//instantiating the server using express
const app=express()
app.use('/graphQL',graphqlHTTP({
    graphiql:true,
    
}))
//creating a port for the server to serve at
//and listen to it
//localhost 4000:(port this is going to be served at)
//will be giving us error because there is really nothing to be
//served as we dont have endpoint/routes
app.listen(5000,()=>{
    console.log('Listening for requests on port 5000')
})

