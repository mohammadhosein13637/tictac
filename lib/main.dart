import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:tictactoe/user-ask.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SpalshScreen(),
    );
  }
}

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      duration: 3000,
      navigateRoute: UserAsk(),
      imageSrc: 'assets/logo/logo.png',
      text: 'Tic Tac Toe',
      textStyle: const TextStyle(
        fontSize: 35,
        fontFamily: 'edu',
      ),
    );
  }
}
