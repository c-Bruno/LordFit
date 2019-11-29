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
     resizeToAvoidBottomPadding: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
               Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(//ver depois
                                'http://i.pravatar.cc/300'
                              // ''
                               ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ]),

                         padding: EdgeInsets.only(top: 63.0, left: 12.0, right: 12.0, bottom: 8.0),
                        child: Center(
                        child: Column(
                          children: <Widget>[
                             ButtonTheme(
                               height: 40.0,
                              child: RaisedButton(
                                shape: new RoundedRectangleBorder(borderRadius:
                                  new BorderRadius.circular(25.0)),

                                  onPressed: (){
                                    showAlertDialog(context);
                                  },
                                  color: Colors.transparent,
                                  child: Align(child: Text("Editar", 
                                  style: TextStyle(                       
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                    ),)),
                              ),
                        )],) ),                      
                      ),
          
          Container(
              padding: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
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
                    keyboardType: TextInputType.number,
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Altura',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple))),
                  ),

                  SizedBox(height: 10.0),
                  TextField(
                    keyboardType: TextInputType.number,
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


                  SizedBox(height: 30.0),
                  Container(
                      height: 40.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.purple[900],
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                            SystemChrome.setEnabledSystemUIOverlays([]);
                          },
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
                          SystemChrome.setEnabledSystemUIOverlays([]);
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
        ]));
  }
}