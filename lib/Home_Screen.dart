import 'package:course/game_logic.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String activePlayer = 'X';
  bool gameOver = false;
  int turn = 0;
  String result = 'xxxxxxxxxx';
  Game game = Game();
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            SwitchListTile.adaptive(
                title: const Text(
                  'Turn on/off two player',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                  ),
                  textAlign: TextAlign.center,
                ),
                value: isSwitched,
                onChanged: (bool newVal) {
                  setState(() {
                    isSwitched = newVal;
                  });
                }),
            Text(
              "It\'s $activePlayer turn".toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              result,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 42,
              ),
              textAlign: TextAlign.center,
            ),

            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                     activePlayer = 'X';
                     gameOver = false;
                     turn = 0;
                     result = '';
                     game = Game();
                     isSwitched = false;
                  });
                },
                icon: const Icon(Icons.replay),
                label: const Text('Repeat the game'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).splashColor)),),
          ],
        ),
      ),
    );
  }
}
