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
          resizeToAvoidBottomPadding: false,
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
            
            padding: const EdgeInsets.only(left: 0.0),
            child: Align(
              alignment: Alignment.centerLeft,
              
              child: Column(
                
                children: <Widget>[     
                             
                      new UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [            
                            Color(0xFF8),
                            Color(0xFF3f117c),
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
                        leading: Icon(FontAwesomeIcons.child, color: Colors.white,),
                        title: new Text('Perfil'),
                        onTap: () {
                          Navigator.pushNamed(context, '/profile');
                        }
                      ),

                      new ListTile(
                        leading: Icon(FontAwesomeIcons.brain, color: Colors.white,),
                        title: new Text('Sobre'),
                        onTap: () {
                          Navigator.pushNamed(context, '/aboutus');
                        }
                      ),

                      new ListTile(
                        leading: Icon(FontAwesomeIcons.buffer, color: Colors.white,),
                        title: new Text('Meu treino'),
                        onTap: () {
                         Navigator.pushNamed(context, '/training'); 
                        }
                      ),

                      new ListTile(
                        leading: Icon(FontAwesomeIcons.jedi, color: Colors.white,),
                        title: new Text('Mestre'),
                        onTap: () {
                          //Navigator.pushNamed(context, '/personal');
                          Navigator.pushNamed(context, '/aboutpersonal');
                        }
                      ),

                      SizedBox(height: 250,),
                  
                      new ListTile(
                        leading: Icon(FontAwesomeIcons.rebel, color: Colors.white,),
                        

                        title: new Text('Sair', 
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                          ),
                          overflow: TextOverflow.ellipsis,
                          ),
                        
                        onTap: () {
                          Navigator.of(context).popUntil((route) => route.isFirst);
                        },
                      ),
                      
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
        left: isCollapsed ? 0 : 0.5 * screenWidth,
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
                padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    Row(                    
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //mainAxisSize: MainAxisSize.max,
                                       
                      children: [
                        InkWell(
                          child: Icon(Icons.menu, color: Colors.white, size: 35.0),
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
                        
                        SizedBox(
                          width: 20,
                        ),
                        Text("Hello" + " teste", style: TextStyle(fontSize: 24, color: Colors.white)),

                        SizedBox(
                          width: 20,
                        ),

                       InkWell(
                        child: Icon(
                            Icons.settings, 
                            color: Colors.white,
                          ),

                          onTap: () {
                            setState(() {
                              if (isCollapsed)
                                _controller.forward();
                                
                              else
                                _controller.reverse();

                              isCollapsed = !isCollapsed;
                            });
                          },
                        )
                      ],
                    ),
                  
                  SizedBox(height: 50.0),
                 ///*
                  _graficobola(),
                  const SizedBox(height: 50.0),
                  

                 SizedBox(height: 20),
                    Text("Progresso", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ListView.separated(
                      shrinkWrap: true,
                        itemBuilder: (context, index) {
                      return ListTile(
                       leading: Icon(Icons.fitness_center, color: Colors.white,),
                        title: Text("Exercicios"),
                        subtitle: Text("Fitness"),
                        trailing: Text("+15kg"),
                      );
                    }, separatorBuilder: (context, index) {
                      return Divider(height: 16);
                    }, itemCount: 3) //altera a quantidade de itens presentes na composição da lista retornada
        
   // */
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    

    Widget _graficobola() {
    return Row(
      children: <Widget>[
        Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(5.0),
          child: CircularProgressIndicator(
            value: 0.6, //para alterar a porcentagem do grafico, alterar esse valor
            
            valueColor: AlwaysStoppedAnimation(Colors.blue),
            backgroundColor: Colors.grey.shade700,
          ),
        ),
        const SizedBox(width: 20.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Overall\nProgress",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                "60% até agora",
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
              ),
            ],
          ),
        )
      ],
    );
  }
}


