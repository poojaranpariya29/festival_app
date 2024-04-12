import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffBFE5B9),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          "images/splash.jpg",
        ),
      ),
    ));
  }
}
