import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class EditPage extends StatefulWidget {
  EditPage({
    Key key,
  }): super(key: key);
  
  @override
  _EditPageState createState() => new _EditPageState();
    
}


class _EditPageState extends State<EditPage> {

//File imageFile;

 _openGallery() async{
   //var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
   this.setState((){
    //imageFile = picture;
   });
 }

  _openCamera() async{
    //var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
   this.setState((){
    //imageFile = picture;
   });

 }

 
  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext context){
      return AlertDialog(
        title: Text("Escolha uma imagem"),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Galeria"),
                onTap: () {
                  _openGallery();
                },
              ),
            
              Padding(padding: EdgeInsets.all(10.0),),
               GestureDetector(
                child: Text("Camera"),
                onTap: () {
                  _openCamera();
                },
              )
            ],
          ),
        ),
      );
    });
  }

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
                                    _showChoiceDialog(context);
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
                      child: GestureDetector( 
                        onTap: () {
                            SystemChrome.setEnabledSystemUIOverlays([]);
                            return Alert(
                             //style: Color(Colors.white70),
                             context: context,
                             title: "Ta feito",
                              desc: "Seu cadastro foi atualizado com sucesso",
                              buttons: [
                                DialogButton(
                                  color: Colors.purple[900],
                                  child: Text('ok'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                ),
                              ]
                           ).show();
                          },
                           
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.purple[900],
                        elevation: 7.0,
                        child: GestureDetector(
                          
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
                      )),),


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
                              'Cancelar',
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