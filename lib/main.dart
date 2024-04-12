import 'package:festival_app/first_page.dart';
import 'package:festival_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => SplashScreen(),
          "home": (context) => Home_Screen(),
        });
  }
}
