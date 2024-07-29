import 'package:flutter/material.dart';
import 'package:newecommerce/home/homescreen.dart';

import 'Splashscreen/spalshscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/home':(context)=>Homescreen(),
      },
    );
  }
}
