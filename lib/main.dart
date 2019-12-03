//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minhappteste/edit.dart';
import 'package:minhappteste/personal.dart';
import 'package:minhappteste/sigup.dart';
import 'training.dart';
import 'profile.dart';
import './about.dart';
import 'home.dart';
import 'login.dart';
import 'resetpassword.dart';
import 'training.dart';
import 'data.dart';
import 'aboutus.dart';


void main() {

  /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
  ));*/

runApp(MaterialApp(

      theme: new ThemeData(
        brightness:Brightness.dark,
        //primarySwatch: Colors.grey,
        primaryColor: const Color(0xFF0f0f0f),
        accentColor: const Color(0xFF64ffda),
        canvasColor: const Color(0xFF0f0f0f),
        fontFamily: 'Calibre-Semibold',


      ),


      debugShowCheckedModeBanner: false,
         
      routes: {
      '/singnup': (context) => MenuDashboardPage(),
      '/resetpassword': (context) => ResetPasswordPage(),
      '/profile': (context) => ProfilePage(),
      '/training': (context) => TrainingPage(),
      '/aboutpersonal': (context) => AboutPage(),
      '/login': (context) => LoginPage(),
      '/personal': (context) => PersonalPage(),
      '/new': (context) => RegisterPage(),
      '/aboutus': (context) => AboutusPage(),
      '/edit': (context) => EditPage(),
      
      },

     home: LoginPage(),
    ),
  );
}