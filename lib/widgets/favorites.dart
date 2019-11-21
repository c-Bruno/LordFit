import 'package:flutter/material.dart';
import 'package:minhappteste/models/popular.dart';
import 'package:minhappteste/models/user_model.dart';
import 'package:minhappteste/models/Search.dart';


List<User> clicado = [];

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
                  onPressed: () {
                    showSearch(context: context, delegate: DataSearch());
                  },
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
                            final User cliquei = 
                                  User(id: favorites[index].id,
                                       name: favorites[index].name, 
                                       imageUrl: favorites[index].imageUrl,
                                       note: favorites[index].note, 
                                       bio: favorites[index].bio, 
                                       date: favorites[index].date,
                                       nationality: favorites[index].nationality,
                                       image1: favorites[index].image1,
                                       image2: favorites[index].image2,
                                       image3: favorites[index].image3,
                                      );

                             clicado = [cliquei];                  
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