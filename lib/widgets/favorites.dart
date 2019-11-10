import 'package:flutter/material.dart';
import 'package:minhappteste/models/popular.dart';
//import 'package:flutter/services.dart';

class Favorite extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    //var favorites;
        return Column(
          children: <Widget>[   
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0) ,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  Text("Populares",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),),
    
                  IconButton(
                  icon: Icon(
                  Icons.more_horiz,
                  ),
                  onPressed: () {},
                  )
                ],
              ),      
            ),
    
            Container(
              /*decoration: BoxDecoration(
                border:Border.all(
                color: Colors.white
                
                ),
              ),*/

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
                        ),
                        
                        Text(favorites[index].name),
                        /*onTap: (){
                            Navigator.pushNamed(context, '/personal');
                        }*/
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