import 'package:flutter/material.dart';
import 'dart:async';
import 'package:submission/info_page.dart';

class SplashScreenPage extends StatefulWidget{

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>{

  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return InfoPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedeae7),
      body: Center(
        child: Image.asset(
          "images/logo.png",
          width: 300,
        ),
      ),
    );
  }
}