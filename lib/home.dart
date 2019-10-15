import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';
import 'profile.dart';
import 'about.dart';
import 'training.dart';

final Color backgroundColor = Color(0xFF0f0f0f);

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
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [            
                            Color(0xFF8),
                            Color(0xFF993399),
                         ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          tileMode: TileMode.clamp)),

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

                      /*new ListTile(
                        title: new Text('Agenda'),
                        onTap: () {
                          Navigator.pushNamed(context, '/agende');
                        },
                      ),*/
                      
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


                        InkWell(
                        child: Icon(
                            Icons.settings, 
                            color: Colors.white
                          ),

                          onTap: () {
                            setState(() {
                              if (isCollapsed)
                                _controller.forward();
                                
                              else
                                _controller.reverse();

                              isCollapsed = !isCollapsed;
                            });

//                            Navigator.pushNamed(context, '/profile');
                          },
                        )
                      ],
                    ),

                  const SizedBox(height: 50.0),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 190,
                                color: Colors.blue,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ListTile(
                                      title: Text(
                                        "9,850",
                                        style:
                                        Theme.of(context).textTheme.display1.copyWith(
                                          color: Colors.black,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                     trailing: Icon(FontAwesomeIcons.walking, color: Colors.black, size: 49.0,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        'Passos',
                                        style: TextStyle(
                                          fontSize: 20.0
                                        ),
                                        //style: whiteText,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10.0),
                              Container(
                                height: 120,
                                color: Colors.teal,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ListTile(
                                      title: Text(
                                        "70 bpm",
                                        style:
                                          Theme.of(context).textTheme.display1.copyWith(
                                          color: Colors.white,
                                          fontSize: 24.0,
                                        ),
                                      ),
                                    trailing: Icon(Icons.favorite, color: Colors.black, size: 35.0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        'Frequencia cardiaca',
                                        //style: whiteText,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                   
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 120,
                      color: Colors.pinkAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "2,430",
                              style:
                                  Theme.of(context).textTheme.display1.copyWith(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                      ),
                            ),
                            trailing: Icon(FontAwesomeIcons.fire, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Calorias perdidas',
                              //style: whiteText,
                            ),
                          ),
                        ],
                      ),
                    ),
                        

                    const SizedBox(height: 10.0),
                    Container(
                      height: 190,
                      color: Colors.deepPurple,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "15 kms",
                              style: TextStyle(
                                //Theme.of(context).textTheme.display1.copyWith(
                                fontSize: 25.0,
                                color: Colors.black,
                              ),
                            ),
                            trailing: Icon(FontAwesomeIcons.road, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Distancia percorrida',
                              style:  TextStyle(
                                fontSize: 15.0,
                              ),
                             ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        
    
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
}
