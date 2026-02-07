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
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Center(
          child: Image.asset(
            'assets/images/code_clash_logo.jfif',
            width: 300,
            height: 300,
          ),
        ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Creating Game...');
                },
                child: const Text(
                  'Create Game',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4169E1),
                  foregroundColor: Colors.white,
                  minimumSize: Size(175, 50),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Joining Game...');
                },
                child: const Text('Join Game'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4169E1),
                  foregroundColor: Colors.white,
                  minimumSize: Size(175, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
