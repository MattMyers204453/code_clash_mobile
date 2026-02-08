import 'package:code_clash_mobile/screens/Intro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        '/create-game': (context) => const CreateGameScreen(),
        '/join-game': (context) => const JoinGameScreen(),
      },
    );
  }
}
