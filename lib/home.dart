import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


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
                          backgroundImage: new NetworkImage(//ver depois
                                'http://i.pravatar.cc/300'
                               //''
                               ),
                                                   
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
                          
                           //showAlertDialog(context);
                           return Alert(
                             //style: Color(Colors.white70),
                             context: context,
                             title: "Sinto um disturbio na força!",
                              desc: "Você esta prestes a deslogar e ficar um passo mais proximo de ser um Lord Sith. \n\n Deseja mesmo continuar ?",
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
                                    Navigator.of(context).popUntil((route) => route.isFirst);
                                    SystemChrome.setEnabledSystemUIOverlays([]);
                                  },
                                ),
                              ]
                           ).show();
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
      SystemChrome.setEnabledSystemUIOverlays([]);
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
                      ],
                    ),

                SizedBox(height: 40),

            Text("   Quer uma sugestão ? \n\t\t Se liga nesses exercicios", style: TextStyle(
              color: Colors.white, fontSize: 20),),
                Container(
                  child: new Container(
                    padding: EdgeInsets.all(16),
                    height: 230.0,
                    child: Carousel(
                boxFit: BoxFit.cover,
                images: [
                  AssetImage ('assets/images/h1.jpg'),
                  AssetImage ('assets/images/h2.jpg'),
                  AssetImage ('assets/images/h3.jpg'),
                  AssetImage ('assets/images/h4.jpg'),
                  
                ] ,
                animationCurve: Curves.linearToEaseOut,
                animationDuration: Duration(microseconds:100000), ),)),


              SizedBox(height: 40),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text(
                "\t\t\t O treinamento funcional é puxar, empurrar, estabilizar, levantar, agachar, arremessar, correr ou saltar para fazer do corpo uma ferramenta que produza movimentos mais eficientes, melhorando a performance e prevenindo lesões, em um processo de aprendizado, desafio e evolução constante.\n \t\t\t Quando corretamente aplicado fornece uma variedade de estímulos e benefícios adicionais, que as outras modalidades não conseguem atingir.",
                  style: new TextStyle(fontSize:17.0,
                  color: const Color(0xFFFEFEFE),
                  fontWeight: FontWeight.w200,
                  fontFamily: "Roboto"),
           ),]),
              /*  SizedBox(height: 40),
                 ///*
                _graficobola(),
                  const SizedBox(height: 50.0),

               SizedBox(height: 20),
                    Text("Foco tal em:", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ListView.separated(
                      shrinkWrap: true,
                        itemBuilder: (context, index) {
                      return ListTile(
                       leading: Icon(Icons.fitness_center, color: Colors.white,),
                        title: Text("Exercicio"),
                        subtitle: Text("Fitness    15 kg"),
                      );
                    }, separatorBuilder: (context, index) {
                      return Divider(height: 16);
                    }, itemCount: 3)*/ //altera a quantidade de itens presentes na composição da lista retornada // */
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


