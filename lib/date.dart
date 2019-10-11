import 'package:flutter/material.dart';
import 'package:minhappteste/data.dart';
 
class DataPage extends StatefulWidget {
  @override
  _DataState createState() => new _DataState();
}
 
class _DataState extends State<DataPage> {
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