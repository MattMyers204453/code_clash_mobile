import 'package:code_clash_mobile/screens/CreateGame.dart';
import 'package:code_clash_mobile/screens/Intro.dart';
import 'package:code_clash_mobile/screens/JoinGame.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroScreen(),
        '/create-game': (context) => CreateGameScreen(),
        '/join-game': (context) => const JoinGameScreen(),
      },
    );
  }
}
