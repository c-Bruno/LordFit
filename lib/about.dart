import 'package:flutter/material.dart';
import 'package:minhappteste/widgets/favorites.dart';
 
class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => new _AboutPageState();
}
 
class _AboutPageState extends State<AboutPage> {
  int selectedIndex = 0;
   //final List<String> favorites = ('Messagens' 'Online' 'Grupos' 'Requests') as List<String>;
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        
          leading: IconButton(
         icon: Icon(Icons.arrow_back_ios),
         color: Colors.white,
         onPressed: () => Navigator.pop(context, false),
       ),
       
      ),
      
      
        body: Column(
          children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
              children: <Widget>[
              Favorite(),
            
              ],
              ),
            ),
            ),
          ]
        ),

    );
  }
}