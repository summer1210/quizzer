import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(Quizzer());

class Quizzer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quantum quiz',
      home: AnimatedSplashScreen(
        duration: 1700,
        splash: 'images/ic_launcher-web.png',
        nextScreen: Quizzler(),
        splashTransition: SplashTransition.decoratedBoxTransition,
        backgroundColor: Colors.black12,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
