import 'package:flutter/material.dart';
import 'package:carros/pages/login/login_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blue,        
        scaffoldBackgroundColor: Colors.white
      ),
      home: LoginPage(),
    );
  }
}


