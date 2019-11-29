import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minhappteste/data.dart';
 
class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordState createState() => new _ResetPasswordState();
}
 
class _ResetPasswordState extends State<ResetPasswordPage> {

   @override
  showAlertDialog(BuildContext context) {

  // configura os botões
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
    title: Text("Aviso"),
    content: Text("Sera encaminhado para o seu endereço de e-mail a recuperação da senha. \n\nDeseja Continuar ?"),
    actions: [
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
      appBar: new AppBar(
        
       leading: IconButton(
         icon: Icon(Icons.arrow_back_ios),
         color: Colors.white,
         
         onPressed: () { 
            SystemChrome.setEnabledSystemUIOverlays([]);
            Navigator.pop(context, false);}
       ),
      ),

      body:Container(
        padding: const EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,           
        ),

        child: ListView(
          children: <Widget>[
            Text(
              "Insira o seu nome de usuario ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.5,  
                fontWeight: FontWeight.w400,              
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 30,),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Usuario",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,

                ),
            ),

             SizedBox(height: 10,),

             Container(
              height: 60,
               alignment: Alignment.centerLeft,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F)
                  ]
                  ),

                  borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
               ),

               child: SizedBox.expand(
                 child: FlatButton(
                   child: Text(
                     "Enviar",
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                       //fontSize: 20
                     ),
                   ),
                   onPressed:() {
                      SystemChrome.setEnabledSystemUIOverlays([]);
                      showAlertDialog(context);
                     //return Alert(context: context, title:"Uma mensagem foi enviada para sua caixa de e-mail para recuperação da senha").show();
                   } ,
                 ),
               ),
            ),
          ],
        )
      )
    );
  }
}

 

