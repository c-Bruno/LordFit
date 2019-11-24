import 'package:flutter/material.dart';
import 'package:minhappteste/FadeAnimation.dart';
import 'package:minhappteste/models/popular.dart';
import 'package:minhappteste/models/user_model.dart';
import 'favorites.dart';
import 'indicados.dart';

class Treino extends StatelessWidget{
  @override
  Widget build (BuildContext context){
   return Expanded(
    child: Container(
      margin: EdgeInsets.only(top: 0.0, bottom: 0.0, right: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),

      /*decoration: BoxDecoration(
        color: Colors.black,
        borderRadius:BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ) 
      ),*/

       child:ClipRRect(
        borderRadius:BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),

        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index){
            final Message chat = chats[index];
              return Container(
              margin: EdgeInsets.only(top: 4.0, bottom: 7.0, right: 0.0),
              decoration: BoxDecoration(
                //color: /*chat.unread ? Color(0xFFFFEFFEE) :*/ Colors.black87,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)
                  
                ),
              ),
              
              child: Row(
                children: <Widget>[
                Row(
                  children: <Widget>[
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage(indicados[index].imageUrl),
                    
                    child: InkWell(                         
                      onTap: (){
                        Navigator.pushNamed(context, '/personal');
                            final User cliquei = 
                                  User(id: indicados[index].id,
                                       name: indicados[index].name, 
                                       imageUrl: indicados[index].imageUrl,
                                       note: indicados[index].note, 
                                       bio: indicados[index].bio, 
                                       date: indicados[index].date,
                                       nationality: indicados[index].nationality,
                                       image1: indicados[index].image1,
                                       image2: indicados[index].image2,
                                       image3: indicados[index].image3,
                                      );

                             clicado = [cliquei];  
                       },
                    ),
                  ),

                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                      child: InkWell(                         
                      onTap: (){
                        Navigator.pushNamed(context, '/personal');
                        final User cliquei = 
                                  User(id: indicados[index].id,
                                       name: indicados[index].name, 
                                       imageUrl: indicados[index].imageUrl,
                                       note: indicados[index].note, 
                                       bio: indicados[index].bio, 
                                       date: indicados[index].date,
                                       nationality: indicados[index].nationality,
                                       image1: indicados[index].image1,
                                       image2: indicados[index].image2,
                                       image3: indicados[index].image3,
                                      );

                             clicado = [cliquei];  
  
                       },
                    //),
                      child: Text(                       
                        //chat.sender.name,
                        indicados[index].name,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                  ),),

                  SizedBox(height: 5.0,),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                     child: InkWell(                         
                      onTap: (){
                        Navigator.pushNamed(context, '/personal');
                                final User cliquei = 
                                  User(id: indicados[index].id,
                                       name: indicados[index].name, 
                                       imageUrl: indicados[index].imageUrl,
                                       note: indicados[index].note, 
                                       bio: indicados[index].bio, 
                                       date: indicados[index].date,
                                       nationality: indicados[index].nationality,
                                       image1: indicados[index].image1,
                                       image2: indicados[index].image2,
                                       image3: indicados[index].image3,
                                      );

                             clicado = [cliquei];  
                      
                       },
                    child: Text(
                        chat.text,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.0,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                     ),
                  ),

                    ],
                  ),
                  ]
                ),
              ],
            )
          );
          }
        ),
       ),
      ),     
    );
  }
}