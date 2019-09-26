import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart'; 
import 'training.dart';
import 'profile.dart';
import './about.dart';
import 'home.dart';

 
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('')),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('teste'),
              accountEmail: new Text('testemail@test.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),
             
          new ListTile(
              title: new Text('Perfil'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new ProfilePage()));
              }
            ),

            new ListTile(
              title: new Text('Sobre'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new AboutPage()));
              }
            ),

             new ListTile(
              title: new Text('Meu treino'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new TrainingPage()));
              }
            )

          ],
        ),
      ),
    );
   }
}
