import 'package:flutter/material.dart';

class CreateGameScreen extends StatelessWidget {
  const CreateGameScreen({super.key});
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
  ];

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
          return Center(
            child: Card(
              elevation: 10.0,
              //color: Colors.lightBlue,
              child: SizedBox(
                width: 300.0,
                height: 100.0,
                child: Center(
                  child: Text(
                    words[index],
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
