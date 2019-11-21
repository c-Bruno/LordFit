import 'package:flutter/material.dart';
import 'package:minhappteste/FadeAnimation.dart';
import 'package:minhappteste/models/popular.dart';
import 'package:minhappteste/models/user_model.dart';
import 'favorites.dart';

class Mestre extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return SliverAppBar(  
                  
      expandedHeight: 400,
      backgroundColor: Colors.black,
      flexibleSpace: FlexibleSpaceBar(
      collapseMode: CollapseMode.pin,
      background: Container(
        height: 400,
        width: 100,
        
        child: ListView.builder(     
               
               itemExtent: 400.0,
                //padding: EdgeInsets.only(top: 30.0,),
                //scrollDirection: Axis.horizontal,  
                itemCount: clicado.length,              
                //itemCount: 10,
                

        itemBuilder: (BuildContext context, int index){
        return new Container(
        height: 400,
        
        decoration: BoxDecoration(
          image: DecorationImage(
           // image: AssetImage('assets/images/kenobi.jpg'),
            image: AssetImage(clicado[index].imageUrl),
            fit: BoxFit.cover,
          ),
        
        ),      
                     
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.black.withOpacity(.3)
            ]
          )
       ),

       
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FadeAnimation(1, Text(/*"Ewan Mcgregor"*/ clicado[index].name, style: 
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40)
            ,)),

            SizedBox(height: 20,),
           
            Row(
              children: <Widget>[
                FadeAnimation(1.2, 
                  Text("Avaliação: ", style: TextStyle(color: Colors.white, fontSize: 16),)
                ),
                SizedBox(width: 8,),
                FadeAnimation(1.3, Text(/*"9.8"*/ clicado[index].note, style: 
                  TextStyle(color: Colors.white, fontSize: 16)
                ,))
              ],
            )
          ],
        ),
      ),
       
    ),); }),),),); 
  }
}