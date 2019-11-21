import 'package:flutter/material.dart';
import 'package:minhappteste/models/popular.dart';
import 'package:minhappteste/models/user_model.dart';

List<User> clicado = [];

class Indicados extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    //var favorites;
    return Expanded(
    child: Container(
      margin: EdgeInsets.only(top: 0.0, bottom: 0.0, right: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),

      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius:BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ) 
      ),

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
                    backgroundImage: AssetImage(chat.sender.imageUrl),
                    
                    child: InkWell(                         
                      onTap: (){
                        Navigator.pushNamed(context, '/personal');
                        final User cliquei = 
                                  User(id: chat.sender.id, name: chat.sender.name, imageUrl: chat.sender.imageUrl, note: chat.sender.note) ;

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
                                  User(id: favorites[index].id, name: favorites[index].name, imageUrl: favorites[index].imageUrl, note: favorites[index].note) ;

                             clicado = [cliquei];  
                       },
                    //),
                      child: Text(                       
                        chat.sender.name,
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
                                  User(id: favorites[index].id, name: favorites[index].name, imageUrl: favorites[index].imageUrl, note: favorites[index].note) ;

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