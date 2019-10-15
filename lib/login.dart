import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'training.dart';
import 'profile.dart';
import './about.dart';
import 'home.dart';
import 'main.dart';
import 'resetpassword.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key key,
  }): super(key: key);
  
  @override
  _LoginPageState createState() => new _LoginPageState();
    
}


class _LoginPageState extends State<LoginPage> {

 final _formKey = GlobalKey<FormState>();
 String _user, _pass;
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
                      fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.purple)
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 280.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          
                          decoration: InputDecoration(
                            labelText: 'User name',
                            labelStyle: TextStyle(
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
                    padding: EdgeInsets.only(top: 350.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                        
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye, color: Colors.grey,),

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
                              )
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
                                      fontSize: 15.0,
                                    ),
                                  ),
                              ),
                            ),
                            
                          ), 
                          ),




                          
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