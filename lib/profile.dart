import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/services.dart'; 
import 'package:rflutter_alert/rflutter_alert.dart';

 
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
         onPressed: () { 
           SystemChrome.setEnabledSystemUIOverlays([]);
           Navigator.pop(context, '/singnup');},
       ),       
      ),

     body: new Stack(
      children: <Widget>[        
        Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 7,
            child: Column(
              children: <Widget>[

                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: NetworkImage(//ver depois
                                'http://i.pravatar.cc/300'
                               //''
                               ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                
                SizedBox(height: 50.0),
                Text(
                  'Teste ',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                ),

                SizedBox(height: 2.0),
                Text(
                  'testemail@test.com',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic,
                    ),
                ),


                SizedBox(height: 25.0),
                
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: GestureDetector(
                      onTap: () {
                            Navigator.pushNamed(context, '/edit');
                        },

                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        
                        child: GestureDetector(
                        onTap: () {
                            Navigator.pushNamed(context, '/edit');
                        },
                        child: Center(
                          child: Text(
                            'Editar',
                            style: TextStyle(
                              color: Colors.white, 
                            ),                            
                          ),
                        ),
                      ),
                    )),
                ),),

                SizedBox(height: 25.0),

                Container(
                    height: 30.0,
                    width: 95.0,
                    child: GestureDetector(
                      
                      onTap: () {
                          return Alert(
                             context: context,
                             title: "Sinto um disturbio na força!",
                              desc: "Você esta prestes a deslogar e ficar um passo mais proximo de ser um Lord Sith. \n\n Deseja mesmo continuar ?",
                              buttons: [
                                DialogButton(
                                  color: Colors.purple[900],
                                  child: Text('Cancelar'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),

                                DialogButton(
                                  color: Colors.purple[900],
                                  child: Text('Continuar'),
                                  onPressed: () {
                                    Navigator.of(context).popUntil((route) => route.isFirst);
                                    SystemChrome.setEnabledSystemUIOverlays([]);
                                  },
                                ),
                              ]
                           ).show();
                        },

                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.red,
                      elevation: 7.0,
                      child: GestureDetector(
                        
                                               
                        child: Center(
                          child: Text(
                            'Sair',
                            style: TextStyle(color: Colors.white, 
                            ),
                          
                          ),
                        ),
                      ),
                ))),
              ],
            ))
      ],
    ));
  }
}