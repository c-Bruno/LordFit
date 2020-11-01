import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minhappteste/models/user_model.dart';
import 'package:minhappteste/widgets/mestre.dart';
import 'package:minhappteste/widgets/mestre_detalhes.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'FadeAnimation.dart';
import 'package:minhappteste/widgets/favorites.dart';
import 'package:minhappteste/widgets/indicados.dart';
import 'package:minhappteste/models/popular.dart';

 
class PersonalPage extends StatefulWidget {
 // PersonalPage(List<User> list);

  @override
  _PersonalPageState createState() => new _PersonalPageState();
}
 
class _PersonalPageState extends State<PersonalPage> {
   @override
  Widget build(BuildContext context) {
    return new Scaffold(

      backgroundColor: Colors.black,

      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[            
              
            /////////////////////////////////  
              Mestre(),              
            ],
          ),

          
          Padding(
          padding: EdgeInsets.only(top: 400.0,),
          child: Container(   
            child: Detalhes(),
          ),),

          Positioned.fill(
            bottom: 50,
            child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FadeAnimation(2,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    height: 50,
                    /*decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.purple[900]
                    ),*/

                    child: RaisedButton(

                      onPressed: (){
                       return Alert(
                             //style: Color(Colors.white70),
                             context: context,
                             title: "Padawan a caminho!",
                              desc: "Você esta preste a ingressar mais profudamente nos conhecimentos da Força para se tornar um grande Jedi. \n\nDeseja solicitar acompanhamento deste personal ?",
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
                                    //pensar
                                     Navigator.pop(context);
                                    SystemChrome.setEnabledSystemUIOverlays([]);
                                  },
                                ),
                              ]
                             /* actions: [
                                cancelaButton,
                                dispararButton,
                              ], */
                           ).show();
                      },
                      color: Colors.purple[900],
                      child: Align(child: Text("Solicitar Personal", 
                      style: TextStyle(                       
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                        ),)),
                  ),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

 
}