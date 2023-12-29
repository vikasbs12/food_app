import 'package:flutter/material.dart';
import 'package:food_app/intro_page.dart';
import 'package:food_app/pages/menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        './introPage':(context) => const IntroPage(),
        './menuPage':(context) => const MenuPage(),
      },
    );
  }
}