import 'package:flutter/material.dart';
import 'FadeAnimation.dart';

 
class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => new _PersonalPageState();
}
 
class _PersonalPageState extends State<PersonalPage> {
  @override
   @override
  Widget build(BuildContext context) {
    return new Scaffold(

      backgroundColor: Colors.black,

      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/kenobi.jpg'),
                        fit: BoxFit.cover
                      )
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
                            FadeAnimation(1, Text("Ewan Mcgregor", style: 
                              TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40)
                            ,)),
                            SizedBox(height: 20,),
                            Row(
                              children: <Widget>[
                                FadeAnimation(1.2, 
                                  Text("Avaliação: ", style: TextStyle(color: Colors.white, fontSize: 16),)
                                ),
                                SizedBox(width: 8,),
                                FadeAnimation(1.3, Text("9.8", style: 
                                  TextStyle(color: Colors.white, fontSize: 16)
                                ,))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(1.6, Text("Ewan é filho de Carol Diane McGregor, uma professora que ainda mora em Perthshire, mas agora virou a assistente pessoal de McGregor. Seu pai, James Charles Stewart McGregor — conhecido como Jim –, foi por muitos anos um professor de física que trabalhava em Morrison's Academy, a escola particular que Ewan estudou desde pequeno, assim como seu irmão mais velho Colin.", 
                        style: TextStyle(color: Colors.grey, height: 1.4),)),

                        SizedBox(height: 40,),
                        FadeAnimation(1.6, 
                          Text("Nascimento", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),

                        SizedBox(height: 10,),
                        FadeAnimation(1.6, 
                          Text("April, 15th 1990, Paris, France", style: TextStyle(color: Colors.grey),)
                        ),

                        SizedBox(height: 20,),
                        FadeAnimation(1.6, 
                          Text("Nacionalidade", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
                        ),

                        SizedBox(height: 10,),
                        FadeAnimation(1.6, 
                          Text("British", style: TextStyle(color: Colors.grey),)
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
                              makeVideo(image: 'assets/images/kenobi-1.jpg'),
                              makeVideo(image: 'assets/images/kenobi-2.jpg'),
                              makeVideo(image: 'assets/images/kenobi-3.jpg'),
                            ],
                          ),
                        )),
                        
                        SizedBox(height: 120,)
                      ],
                    ),
                  )
                ]),
              )
            ],
          ),
          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(2,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple[700]
                    ),
                    child: Align(child: Text("Solicitar Personal", 
                      style: TextStyle(                       
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                        ),)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
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
                Colors.black.withOpacity(.9),
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
}