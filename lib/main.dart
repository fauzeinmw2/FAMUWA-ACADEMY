import 'package:flutter/material.dart';
import 'package:submission/splashscreen_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selamat Datang di FAMUWA ACADEMY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenPage(),
    );
  }
}


