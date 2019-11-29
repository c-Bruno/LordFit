import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart'; 


 
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
         onPressed: () => Navigator.pop(context, '/singnup'),
       ),
       
      ),


 /*     body: Center(
        child: RaisedButton (
          child: Text('Cadastre-se Já'),
          onPressed: (){
            Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new _HomePage2()));
          },
        ),
      ),
    );
  }
}

class _HomePage2 extends StatelessWidget {
  @override
Widget build(BuildContext context) {
 return Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage ('assets/images/1.gif'),
      AssetImage ('assets/images/2.gif'),
      AssetImage ('assets/images/3.gif'),
      AssetImage ('assets/images/4.gif'),
      
    ] ,
    animationCurve: Curves.linearToEaseOut,
    animationDuration: Duration(microseconds:100000), 
    );
}*/

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
                ),

                SizedBox(height: 25.0),

                Container(
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
                    ))
              ],
            ))
      ],
    ));
  }
}