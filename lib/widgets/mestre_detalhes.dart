import 'package:flutter/material.dart';
import 'package:minhappteste/FadeAnimation.dart';
import 'package:minhappteste/models/popular.dart';
import 'package:minhappteste/models/user_model.dart';
import 'favorites.dart';

class Detalhes extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    
       return ListView.builder(     
               
          itemExtent: 400.0,
          itemCount: clicado.length,              
              

        itemBuilder: (BuildContext context, int index){
        return  CustomScrollView(
          slivers: <Widget>[
          SliverList(
                delegate: SliverChildListDelegate([
                 
                  Padding(                    
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(1.6, Text(clicado[index].bio, 
                        style: TextStyle(color: Colors.grey, height: 1.4),)),

                        SizedBox(height: 40,),
                        FadeAnimation(1.6, 
                          Text("Nascimento", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),

                        SizedBox(height: 10,),
                        FadeAnimation(1.6, Text(clicado[index].date,
                         style: TextStyle(color: Colors.grey),)
                        ),

                        SizedBox(height: 20,),
                        FadeAnimation(1.6, 
                          Text("Nacionalidade", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),

                        SizedBox(height: 10,),
                        FadeAnimation(1.6, Text(clicado[index].nationality,
                         style: TextStyle(color: Colors.grey),)
                        ),

                        SizedBox(height: 20,),
                        FadeAnimation(1.6, 
                          Text("Galeria", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),

                        SizedBox(height: 20,),
                        FadeAnimation(1.8, Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              makeVideo(image: clicado[index].image1),
                              makeVideo(image: clicado[index].image2),
                              makeVideo(image: clicado[index].image3),
                            ],
                          ),
                        )),
                        
                        SizedBox(height: 160,)
                      ],
                    ),
                  )
                ]),
              ),
          ]);
          });
  }
 }

 Widget makeVideo({image}) {
    return AspectRatio(
      aspectRatio: 1.5/ 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.3)
              ]
            )
          ),
          child: Align(
            //child: Icon(Icons.play_arrow, color: Colors.white, size: 70,),
          ),
        ),
      ),
    );
  }