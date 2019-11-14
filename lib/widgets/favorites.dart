import 'package:flutter/material.dart';
import 'package:minhappteste/models/popular.dart';

class Favorite extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    //var favorites;
        return Column(
          children: <Widget>[   
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0,) ,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                  IconButton(
                    icon: Icon(
                    Icons.arrow_back,                   
                  ),
                     onPressed: ()  => Navigator.pop(context, false),
                  ),

                  Text("Populares",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    letterSpacing: 1.3,
                  ),),
    
                  IconButton(
                  icon: Icon(
                  Icons.search,
                  ),
                  onPressed: () {},
                  )
                ],
              ),      
            ),
    
            Container(
               height: 120.0,
              //color: Colors.white10,              
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),                
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index){
                  
                  return Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                           radius: 35.0,
                          backgroundImage: AssetImage(favorites[index].imageUrl),

                        child: InkWell(                         
                          onTap: (){
                            Navigator.pushNamed(context, '/personal');
                           },
                        ),),
                        
                        Text(favorites[index].name),
                     ], 
                  ),              
                );
             },
            ),
         ),                
      ]
    );
  }
}