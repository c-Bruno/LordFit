/*import 'package:flutter/material.dart';
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
      appBar: new AppBar(),
       
      
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
            ),
          ],
        ),
      ),
    );
   }
}*/


import 'package:flutter/material.dart';
import 'main.dart';
import 'profile.dart';
import 'about.dart';
import 'training.dart';

final Color backgroundColor = Color(0xFF000000);

class MenuDashboardPage extends StatefulWidget {
    @override
    _MenuDashboardPageState createState() => _MenuDashboardPageState();
  }

class _MenuDashboardPageState extends State<MenuDashboardPage> with SingleTickerProviderStateMixin {
    bool isCollapsed = true;
    double screenWidth, screenHeight;
    final Duration duration = const Duration(milliseconds: 300);
    AnimationController _controller;
    Animation<double> _scaleAnimation;
    Animation<double> _menuScaleAnimation;
    Animation<Offset> _slideAnimation;

    @override
    void initState() {
      super.initState();
      _controller = AnimationController(vsync: this, duration: duration);
      _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
      _menuScaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
      _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(_controller);
    }

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      screenHeight = size.height;
      screenWidth = size.width;

      return Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: <Widget>[
            menu(context),
            dashboard(context),
          ],
        ),
      );
    }

    Widget menu(context) {
      return SlideTransition(
        position: _slideAnimation,
        child: ScaleTransition(
          scale: _menuScaleAnimation,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              //alignment: Alignment.centerLeft,
              child: Column(
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
                          Navigator.pushNamed(context, '/profile');
                        }
                      ),

                      new ListTile(
                        title: new Text('Sobre'),
                        onTap: () {
                          Navigator.pushNamed(context, '/about');
                        }
                      ),

                      new ListTile(
                        title: new Text('Meu treino'),
                        onTap: () {
                         Navigator.pushNamed(context, '/training'); 
                        }
                      ),
        
                  /*Text("Dashboard", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(height: 10),
                  Text("Messages", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(height: 10),
                  Text("Utility Bills", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(height: 10),
                  Text("Funds Transfer", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(height: 10),
                  Text("Branches", style: TextStyle(color: Colors.white, fontSize: 22)),*/
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget dashboard(context) {
      return AnimatedPositioned(
        duration: duration,
        top: 0,
        bottom: 0,
        left: isCollapsed ? 0 : 0.6 * screenWidth,
        right: isCollapsed ? 0 : -0.2 * screenWidth,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Material(
            animationDuration: duration,
            borderRadius: BorderRadius.all(Radius.circular(40)),
            elevation: 8,
            color: backgroundColor,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              child: Container(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      
                      
                      children: [
                        InkWell(
                          child: Icon(Icons.menu, color: Colors.white),
                          onTap: () {
                            setState(() {
                              if (isCollapsed)
                                _controller.forward();
                              else
                                _controller.reverse();

                              isCollapsed = !isCollapsed;
                            });
                          },
                        ),
                        Text("Home", style: TextStyle(fontSize: 24, color: Colors.white)),
                        Icon(Icons.settings, color: Colors.white),
                      ],
                    ),
                    SizedBox(height: 50),
                    /*Container(
                      height: 200,
                      child: PageView(
                        controller: PageController(viewportFraction: 0.8),
                        scrollDirection: Axis.horizontal,
                        pageSnapping: true,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            color: Colors.redAccent,
                            width: 100,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            color: Colors.blueAccent,
                            width: 100,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            color: Colors.greenAccent,
                            width: 100,
                          ),
                        ],
                      ),
                    ),*/
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
}
