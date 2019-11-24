import 'package:flutter/material.dart';
import 'package:minhappteste/widgets/mestre.dart';
import 'package:minhappteste/widgets/mestre_detalhes.dart';
import 'FadeAnimation.dart';
import 'package:minhappteste/widgets/favorites.dart';
import 'package:minhappteste/widgets/indicados.dart';
import 'package:minhappteste/models/popular.dart';

 
class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => new _PersonalPageState();
}
 
class _PersonalPageState extends State<PersonalPage> {
  @override
  showAlertDialog(BuildContext context) {

  // configura os botões
  Widget lembrarButton = FlatButton(
    child: Text("Avaliar"),
    onPressed:  () {},
  );
  Widget cancelaButton = FlatButton(
    child: Text("Cancelar"),
    onPressed:  () {},
  );
  Widget dispararButton = FlatButton(
    child: Text("Continuar"),
    onPressed:  () {},
  );



  // configura o  AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Padawan a caminho"),
    content: Text("Você esta preste a ingressar mais profudamente nos conhecimentos da Força para se tornar um grande Jedi. \n\nDeseja solicitar acompanhamento deste personal ?"),
    actions: [
      lembrarButton,
      cancelaButton,
      dispararButton,
    ],
  );



  // exibe o dialogo
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
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
                        showAlertDialog(context);
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