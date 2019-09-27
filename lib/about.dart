import 'package:flutter/material.dart';
 
class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => new _AboutPageState();
}
 
class _AboutPageState extends State<AboutPage> {
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
    );
  }
}