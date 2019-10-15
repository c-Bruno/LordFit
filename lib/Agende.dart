import 'package:flutter/material.dart';
import 'package:minhappteste/data.dart';

 
class AgendePage extends StatefulWidget {
  @override
  _AgendePageState createState() => new _AgendePageState();
}
 
class _AgendePageState extends State<AgendePage> {
  @override
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

      body:Container(
        padding: const EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
        ),


      )
    );
  }
}