import 'dart:math';

import 'package:flutter/material.dart';

class RandomNumberGenerator extends StatefulWidget {
  const RandomNumberGenerator({Key? key}) : super(key: key);

  @override
  State<RandomNumberGenerator> createState() => _RandomNumberGeneratorState();
}

class _RandomNumberGeneratorState extends State<RandomNumberGenerator> {
  int randomNumber1 = 0;
  int randomNumber2 = 0;
  int clickCount1 = 0;
  int clickCount2 = 0;
  bool button1Disabled = false;
  bool button2Disabled = false;

  @override
  void initState() {
    super.initState();
    _generateRandomNumbers();
  }

  void _generateRandomNumbers() {
    setState(() {
      if (clickCount1 < 10) {
        randomNumber1 = Random().nextInt(100) + 1;
        clickCount1++;
      } else {
        button1Disabled = true;
      }

      if (clickCount2 < 10) {
        do {
          randomNumber2 = Random().nextInt(100) + 1;
        } while (randomNumber2 == randomNumber1);
        clickCount2++;
      } else {
        button2Disabled = true;
      }
    });
  }

  void _resetScore() {
    setState(() {
      randomNumber1 = 0;
      randomNumber2 = 0;
      clickCount1 = 0;
      clickCount2 = 0;
      button1Disabled = false;
      button2Disabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Number'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: button1Disabled
                  ? null
                  : () {
                      _generateRandomNumbers();
                    },
              child: Text("$randomNumber1"),
            ),
            ElevatedButton(
              onPressed: button2Disabled
                  ? null
                  : () {
                      _generateRandomNumbers();
                    },
              child: Text("$randomNumber2"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your Score',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              '${randomNumber1 + randomNumber2}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'You have $clickCount1 out of $clickCount2 correct',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _resetScore();
              },
              child: const Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}
