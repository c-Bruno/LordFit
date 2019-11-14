import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'training.dart';
import 'profile.dart';
import './about.dart';
import 'home.dart';
import 'main.dart';
import 'resetpassword.dart';


class RegisterPage extends StatefulWidget {
  RegisterPage({
    Key key,
  }): super(key: key);
  
  @override
  _RegisterPageState createState() => new _RegisterPageState();
    
}


class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     /*resizeToAvoidBottomPadding: false,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 25.0, 0.0, 0.0),
                  child: Text(
                    'Signup',
                    style:
                        TextStyle(
                          fontSize: 70.0, 
                          fontWeight: FontWeight.bold
                          ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(230.0, 30.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 70.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple
                    ),
                  ),
                )
              ],
            ),
          ),
          
          Container(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple))),
                  ),


                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple))),
                    obscureText: true,
                  ),

                  
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Rg',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple))),
                  ),

                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'CPF',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple))),
                  ),

                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Peso (kg)',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple))),
                  ),

                   SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Nome de usuario ',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple))),
                  ),


                  SizedBox(height: 50.0),
                  Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.purple,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'Concluir',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                            ),
                          ),
                        ),
                      )),


                  SizedBox(height: 20.0),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },

                      child:                         
                        Center(
                          child: Text(
                              'Go Back',
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ])*/);
  }
}