import 'dart:math';

import 'package:flutter/material.dart';

class CreateGameScreen extends StatelessWidget {
  CreateGameScreen({super.key});
  final List<String> WordsUsed = [];
  final List<String> words = const [
    'banana',
    'Lebron',
    'Apple',
    'Yayyy',
    'Fun',
    'burger',
    'fries',
    'happy',
    'Star Wars',
    'Pizza',
    'Family',
    'Lincoln',
    'Eden',
    'Mom',
    'Dad',
    'Katie',
    'Will',
    'Karsyn',
    'Brooke',
    'Matt',
    'Josh',
    'Erica',
    'Ben',
    'Ellie',
    'Myra',
    'Silly',
    'Joyful',
    'Sad',
    'Peanut Butter',
    'Park'
  ];

  String UnusedWord(){
    Random random_int = Random();
    int random_index = random_int.nextInt(words.length);
    String clue = words[random_index];
    while(true){
      if(!WordsUsed.contains(clue)){
          WordsUsed.add(clue);
          break;
        }
    random_index = random_int.nextInt(words.length);
    clue = words[random_index];
    }
    return clue;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Screen for Game Grid')),
      body: GridView.count(
        // Create a grid with 2 columns.
        // If you change the scrollDirection to horizontal,
        // this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the list.
        children: List.generate(8, (index) {
          String clue = UnusedWord();
          return Center(
            child: Card(
              elevation: 10.0,
              //color: Colors.lightBlue,
              child: SizedBox(
                width: 300.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    clue,
                    style: TextTheme.of(context).headlineSmall,
                
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
