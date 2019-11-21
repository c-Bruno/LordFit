import 'package:flutter/material.dart';
import 'package:minhappteste/widgets/favorites.dart';
import 'package:minhappteste/widgets/indicados.dart';
 
class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => new _AboutPageState();
}
 
class _AboutPageState extends State<AboutPage> {
  int selectedIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(        
        body: Column(
          children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
              children: <Widget>[
              Favorite(),
             
             /*SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text(  
                    'Melhores avaliados',
                  )
                ],
              ),
               SizedBox(height: 20,),*/

              Indicados(),
            
              ],
              ),
            ),
            ),
          ]
        ),

    );
  }
}