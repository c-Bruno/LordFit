import 'package:flutter/material.dart';
/*import 'package:image_cropper/image_cropper.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';*/

class AboutusPage extends StatefulWidget {
  @override
  _AboutusPageState createState() => new _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {

   /*File _image;

  getImageFile(ImageSource source) async {

     //Clicking or Picking from Gallery 

    var image = await ImagePicker.pickImage(source: source);

    //Cropping the image

    File croppedFile = await ImageCropper.cropImage(
      sourcePath: image.path,
      /*ratioX: 1.0,
      ratioY: 1.0,*/
      maxWidth: 512,
      maxHeight: 512,
    );

    //Compress the image

    var result = await FlutterImageCompress.compressAndGetFile(
      croppedFile.path,
      croppedFile.path,
      quality: 50,
    );

    setState(() {
      _image = result;
      print(_image.lengthSync());
    });
  }
*/
  @override
  Widget build(BuildContext context) {
   // print(_image?.lengthSync());
    return Scaffold(
     appBar: AppBar(
        title: Text(" "),
      ),
      /*body: Center(
        child: _image == null
            ? Text("Image")
            : Image.file(
                _image,
                height: 200,
                width: 200,
              ),
      ),*/

    /*  floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
            label: Text("Camera"),
            onPressed: () {} /*=> getImageFile(ImageSource.camera)*/,
            heroTag: UniqueKey(),
            icon: Icon(Icons.camera),
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton.extended(
            label: Text("Gallery"),
            onPressed: () {} /*=> getImageFile(ImageSource.gallery)*/,
            heroTag: UniqueKey(),
            icon: Icon(Icons.photo_library),
          )
        ],
      ),*/

       body: new Stack(
      children: <Widget>[
    
        Positioned(
          //height: 300.0,
            width: 350.0,
            top: MediaQuery.of(context).size.height / 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                
                SizedBox(height: 20,),
                Text(
                  'LordFit ',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                SizedBox(height: 5.0),

                 
                Text(
                  'Versão 2.19.341',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic,
                    ),
                ),

                SizedBox(height: 20.0),
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        //color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                        ) ,/*DecorationImage(
                            image: NetworkImage(//ver depois
                                'http://i.pravatar.cc/300'
                               //''*/
                               //),
                           // fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                
               
                

                SizedBox(height: 2.0),
                Text(
                  '© 2019-2019 LordFit',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontStyle: FontStyle.italic,
                    ),
                ),

                
/*                 new Text(
          "Nosso objetivo",
            style: new TextStyle(fontSize:20.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

        new Text(
          "Além de ajudar você à emagrecer, ganhar massa muscular e definir seus músculos, temos uma missão para facilitar a prática do exercício diário de cada usuário de nosso sisitema, sem exceção. Juntamente com a ideia de promover uma saúde melhor à todos que o utilizam. Nosso sistema busca uma automatização do sistema interligado à academias, em nosso site você, professor/treinador pode se cadastrar para agendar aulas com seus alunos (as), pode também acompanhar o progesso dos mesmo, e ainda tem a aptidão de alterar a série de exercícios de cada aluno (a) dentro do site. Já na visão do aluno (a), ele (a) poderá acompanhar suas séries diárias facilmente atravéz da tela do celular, em nosso aplicativo para aluno LordFit - disponível na Google Store.",
            style: new TextStyle(fontSize:12.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

        SizedBox(height: 10,),
         new Text(
          "Inspiração",
            style: new TextStyle(fontSize:20.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

            new Text(
          "Somos movidos por uma vontade de gerar alegria e prazer para nossos usuários (as), depois que alcançado isso, o que nos resta fazer é trabalhar em melhorias para que sempre existam novidades, e com isso, consigamos atingir um público maior, para que mais pessoas possam aderir este hábito de práticar exercícios.",
            style: new TextStyle(fontSize:12.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

          new Text(
          "Começe agora a fazer parte do nosso time LordFit",
            style: new TextStyle(fontSize:16.0,
            color: const Color(0xFF9856C2),
            fontWeight: FontWeight.w200,
            fontFamily: "Times New Roman"),
          ),


          new Text(
          "Acesse LINKDOCADASTROPROFESSOR para se cadastrar em nosso site (coach), e acesse LINKGOOGLESTORE para fazer o download do App. Esperamos ansiosos pelo seu cadastro, venha emagreçer com a gente!",
            style: new TextStyle(fontSize:12.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

          new Text(
          "Time de desenvolvedores",
            style: new TextStyle(fontSize:20.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),




new Image.network(
            'assets/images/foto-bruno.fw.png',
            fit:BoxFit.fill,
            ),

 new Text(
          "Bruno Caboclo - Desenvolvedor Mobile",
            style: new TextStyle(fontSize:10.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

new Image.network(
            'assets/images/foto-carlos.fw.png',
            fit:BoxFit.fill,
            ),

 new Text(
          "Carlos Eduardo - Desenvolvedor Front-End",
            style: new TextStyle(fontSize:10.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

new Image.network(
            'assets/images/foto-jeni.fw.png',
            fit:BoxFit.fill,
            ),

 new Text(
          "Jeniffer Quaiat -  Desenvolvedor Front-End",
            style: new TextStyle(fontSize:10.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

new Image.network(
            'assets/images/foto-rafa.fw.png',
            fit:BoxFit.fill,
            ),

 new Text(
          "Rafael Santana - Desenvolvedor Back-End",
            style: new TextStyle(fontSize:10.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),


 new Text(
          "_ _ _ _ _",
            style: new TextStyle(fontSize:12.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

 new Text(
          "Para mais informações entre em contato através nossas redes sociais:",
            style: new TextStyle(fontSize:12.0,
            color: const Color(0xFFFEFEFE),
            fontWeight: FontWeight.w200,
            fontFamily: "Roboto"),
          ),

new Image.network(
            'assets/images/facebook.fw.png',
            fit:BoxFit.fill,
            ),
new Image.network(
            'assets/images/instagram.fw.png',
            fit:BoxFit.fill,
            ),
new Image.network(
            'assets/images/whatsapp.fw.png',
            fit:BoxFit.fill,
            ),


*/


               /* SizedBox(height: 25.0),
                
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      //shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                            Navigator.pushNamed(context, '/new');
                        },

                        child: GestureDetector(
                        onTap: () {
                            //Navigator.popUntil(context,ModalRoute.withName('/login'));
                            Navigator.pushNamed(context, '/new');
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
                ),*/

                //SizedBox(height: 25.0),

                /*Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      //shadowColor: Colors.redAccent,
                      color: Colors.red,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {
                            //Navigator.popUntil(context,ModalRoute.withName('/login'));
                            Navigator.of(context).popUntil((route) => route.isFirst);
                        },
                                               
                        child: Center(
                          child: Text(
                            'Log out',
                            style: TextStyle(color: Colors.white, 
                            ),
                          
                          ),
                        ),
                      ),
                    ))*/
              ],
            ))
      ],
    )
    );
  }


 /* @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    );*/
}
//}