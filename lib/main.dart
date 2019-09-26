import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/services.dart';
/*import 'package:carousel_pro/carousel_pro.dart'; 
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:minhappteste/home.dart';*/
import 'training.dart';
import 'profile.dart';
import './about.dart';
import 'home.dart';


void main() {

runApp(MaterialApp(

      theme: new ThemeData(
        brightness:Brightness.dark,
        //primarySwatch: Colors.grey,
        primaryColor: const Color(0xFF212121),
        accentColor: const Color(0xFF64ffda),
        canvasColor: const Color(0xFF141414),
        fontFamily: 'Roboto',
      ),

      debugShowCheckedModeBanner: false,
      routes: {
      '/singnup': (context) => HomePage(),
      },

      home: Home(),

    ),
  );
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  
}

class _HomeState extends State<Home> {

  @override
  void initState(){
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold)
                    ),
                  ),

                  Container(
                  padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                  child: Text(
                    "There",
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold)
                    ),
                  ),

                  Container(
                  padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                  child: Text(
                    ".",
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.purple)
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'user name',
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide (color: Colors.grey)
                            )
                            )
                          ),
                          SizedBox(height: 20.0,)
                        //)
                      ],
                    ),
                  ),

                   Container(
                    padding: EdgeInsets.only(top: 390.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'password',
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide (color: Colors.grey)
                            )
                            ),
                            obscureText: true,                           
                          ),
                          SizedBox(height: 5.0),
                          
                          Container(
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(top: 15.0, left: 20.0),
                            child: InkWell(
                              child: Text('Esqueceu sua senha ?',
                              style:  TextStyle(
                                color: Colors.white70, 
                                fontWeight: FontWeight.bold,
                                fontFamily: "Monserrat",
                                decoration: TextDecoration.underline)
                              ),
                              ),
                            ),
                        //)
                      
                          SizedBox (height: 10.0),
                          Container(
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.black,
                              color: Colors.purple,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap:() {
                                 Navigator.pushNamed(context, '/singnup');
                                },
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                      fontFamily: "Montserrat",
                                    ),
                                  ),
                              ),
                            ),
                          ), 
                          )
                     ],
                    ),
                  ),
               // )
              ],
            ),
          )
        ],
      )
    );
  }
}

