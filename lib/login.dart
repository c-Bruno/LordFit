import 'dart:convert';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minhappteste/requests/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:rflutter_alert/rflutter_alert.dart';

import 'main.dart';


class LoginPage extends StatefulWidget {
  LoginPage({
    Key key,
  }): super(key: key);
  
  @override
  _LoginPageState createState() => new _LoginPageState();
    
}


class _LoginPageState extends State<LoginPage> {

 //final _formKey = GlobalKey<FormState>();
  final userValue = new TextEditingController();
  final passwordValue = new TextEditingController();

  final usuario = 'teste';
  final senha = '123';


 bool _isObscured = true;

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
                  padding: EdgeInsets.fromLTRB(15.0, 85.0, 0.0, 0.0),
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold)
                    ),
                  ),

                  Container(
                  padding: EdgeInsets.fromLTRB(15.0, 150.0, 0.0, 0.0),
                  child: Text(
                    "There",
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold)
                    ),
                  ),

                  Container(
                  padding: EdgeInsets.fromLTRB(220.0, 150.0, 0.0, 0.0),
                  child: Text(
                    ".",
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.purple[900])
                    ),
                  ),
                  
                  Container(
                    padding: EdgeInsets.only(top: 280.0, left: 20.0, right: 20.0),
                    child: Column(
                      
                      children: <Widget>[
                       //final user =
                        TextField(
                          controller: userValue,
                          decoration: InputDecoration(
                            labelText: 'Usuario',
                            labelStyle: TextStyle(
                              color: Colors.white
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide (color: Colors.grey)
                            )
                            ),
                            keyboardType:  TextInputType.emailAddress,
                          ),
                        
                          
                          SizedBox(height: 20.0,)
                        //)
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(     
                          controller: passwordValue,                   
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            suffixIcon: IconButton(
                              icon: Icon(//Icons.remove_red_eye, color: Colors.grey,),
                              _isObscured
                                ? Icons.visibility_off
                                : Icons.visibility,
                                color: Theme.of(context).primaryColorLight,
                                ),

                              onPressed: (){
                                if(_isObscured){
                                  setState(() {
                                    _isObscured = false;                                                               
                                  });
                                }
                                else{
                                  setState(() {
                                    _isObscured = true;                                    
                                  });
                                }
                              },
                            ),
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,                                     
                           ),                            
          
                           focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide (color: Colors.grey)
                              ),
                            ),
                            obscureText: _isObscured,                           
                          ),
                          SizedBox(height: 5.0),
                          
                          Container(
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(top: 15.0, left: 20.0),
                           
                            child: InkWell(
                              onTap: (){
                              Navigator.pushNamed(context, '/resetpassword');
                               SystemChrome.setEnabledSystemUIOverlays([]);
                              },

                              child: Text('Esqueceu sua senha ?',
                              style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    
                                decoration: TextDecoration.underline),
                              ),
                             
                              ),
                            ),
                        //)                     
                          SizedBox (height: 20.0),
                          Container(
                            height: 40.0,
                            
                          child: GestureDetector(  
                          onTap:() {
                            
                            if (userValue.text == usuario && passwordValue.text == senha){
                              SystemChrome.setEnabledSystemUIOverlays([]);
                                userValue.text ='';
                                passwordValue.text ='';

                                return Navigator.pushNamed(context, '/singnup');                               
                                }

                            if (usuario != userValue.text || senha != passwordValue.text || userValue == null || passwordValue == null){
                              SystemChrome.setEnabledSystemUIOverlays([]);


                              return Alert(
                             context: context,
                             title: "Não te conheço",
                              desc: "Estes não são os androides que você procura \n\n Se você for mesmo você, tente de novo porque esse usuario ou senha esta incorreto",
                              buttons: [
                                DialogButton(
                                  color: Colors.purple[900],
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ]
                           ).show();
                          }

                            userValue.text ='';
                            passwordValue.text ='';
                         },

                              child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.black,
                              color: Colors.purple[900],
                              elevation: 7.0,

                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                              ),
                            ),                            
                          ), 
                       ),  

                        SizedBox (height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Novo aqui ?',
                            ),
                            SizedBox(width: 5.0,),

                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/new');
                                 SystemChrome.setEnabledSystemUIOverlays([]);
                              },
                              child: Text('Cadastre-se',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.purple[800],
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                              ),),

                            ),
                          ],
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
