import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('This is Bens branch'),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {print('Creating Game...');},
                child: const Text('Create Game'),
              ),
               ElevatedButton(
                onPressed: () {print('Joining Game...');},
                child: const Text('Join Game'),
              ),
            ],) 
        ),
      ),
    );
  }
}
