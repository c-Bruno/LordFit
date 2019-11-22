import 'package:flutter/material.dart';

class AboutusPage extends StatefulWidget {
  @override
  _AboutusPageState createState() => new _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: new AppBar(

          leading: IconButton(
         icon: Icon(Icons.arrow_back_ios),
         color: Colors.white,
         onPressed: () => Navigator.pop(context, '/singnup'),
       ),
       
      ),
    );
}}