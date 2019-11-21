import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'data.dart';
import 'dart:math';
import 'main.dart';
import 'home.dart';
import 'contants.dart';


class TrainingPage extends StatefulWidget {
  @override
  _TrainingPageState createState() => new _TrainingPageState();
  
  
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _TrainingPageState extends State<TrainingPage> {
  var currentPage = images.length - 1.0;


// para criação de um novo "menu de edição" é necessario chamar o contants (pelo menos nesse projeto devido a estrutura definida) e modificar linhas a baixo conforme necessario
  void choiceAction(String choice){
    if(choice == Constants.Settings){
      print('Editar treino');
    }
    else if(choice == Constants.createn){
      print('Criar novo treino');
    } 
    else if(choice == Constants.delete){
      print('deletar treino');
    }
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Container(
      
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [            
              Color(0xFF8),
              Color(0xFF3f117c),
            ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp)),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      onPressed: () {
                      Navigator.pop(context, '/singnup');
                      },
                    ),
                    
                    
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
             
             

             SizedBox( height: 1),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Workouts",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.0,
                          fontFamily: "Calibre-Semibold",
                          letterSpacing: 1.0,
                        )),
                    
                    
                    //Menu de editar 
                   /* PopupMenuButton <String>(
                       color: Color(0xFF6a0499),
                      icon: Icon(Icons.create, size: 25),
                      
                       onSelected: choiceAction,
                        itemBuilder: (BuildContext context){                         
                          return Constants.choices.map((String choice){
                            return PopupMenuItem<String>(                              
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                      },
                     ),
                    
                    IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        size: 20.0,
                        color: Colors.white,
                      ),
                      onPressed: () {
                         Navigator.pushNamed(context, '/menubar');
                         
                      },
                    )*/
                  ],
                ),
              ),
              
              
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF6a0499),
                        borderRadius: BorderRadius.circular(20.0),
                      ),

                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.0, vertical: 6.0),
                              
                          child: Text("Treino A",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),


                    PopupMenuButton <String>(
                       color: Color(0xFF6a0499),
                      icon: Icon(Icons.edit, size: 25),
                      
                       onSelected: choiceAction,
                        itemBuilder: (BuildContext context){                         
                          return Constants.choices.map((String choice){
                            return PopupMenuItem<String>(                              
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                      },
                     ),


                   /*SizedBox(
                      width: 15.0,
                    ),
                    Text("25+ Stories",
                        style: TextStyle(color: Colors.white))*/
                  ],
                ),
              ),


              
            SizedBox(height: 6),
// aciona carousel de imagens 
             Stack(
                children: <Widget>[
                  CardScrollWidget(currentPage),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: images.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, contraints) {
        var width = contraints.maxWidth;
        var height = contraints.maxHeight;
      
        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

       for (var i = 0; i < images.length; i++) {
         var delta = i - currentPage;
         bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                  horizontalInset * -delta * (isOnRight ? 15 : 1),
              0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0)
                ]),
                
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                     Image.asset(images[i], fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0),
                              child: Text(title[i],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.0,
                                      //fontFamily: "SF-Pro-Text-Regular"
                                  )
                                ),
                            ),

                            SizedBox(
                              height: 10.0,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 12.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 22.0, vertical: 6.0),
                                decoration: BoxDecoration(
                                    //color: Colors.blueAccent,
                                    color: Color(0xFF6a0499),
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text("+ Informações",
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
  
}

