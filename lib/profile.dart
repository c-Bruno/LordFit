import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart'; 

 
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => new _ProfilePageState();
}
 
class _ProfilePageState extends State<ProfilePage> {
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
      body: Center(
        child: RaisedButton (
          child: Text('Cadastre-se Já'),
          onPressed: (){
            Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new _HomePage2()));
          },
        ),
      ),
    );
  }
}

class _HomePage2 extends StatelessWidget {
  @override
Widget build(BuildContext context) {
 return Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage ('assets/images/1.gif'),
      AssetImage ('assets/images/2.gif'),
      AssetImage ('assets/images/3.gif'),
      AssetImage ('assets/images/4.gif'),
      
    ] ,
    animationCurve: Curves.linearToEaseOut,
    animationDuration: Duration(microseconds:100000), 
    );
}
}