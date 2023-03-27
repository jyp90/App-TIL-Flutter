import 'package:flutrain/components/comp.dart';
import 'package:flutrain/pages/appbar.dart';
import 'package:flutrain/utils/math-util.dart';
import 'package:flutrain/utils/toastmessage.dart';
import 'package:flutter/material.dart';


class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar('Dice', null),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  Expanded(child: getDiceImageByPath('image/dice$leftDice.png')),
                  SizedBox(width: 20.0),
                  Expanded(child: getDiceImageByPath('image/dice$rightDice.png')),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            ButtonTheme(
                child: ElevatedButton(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    // color: Colors.deepOrangeAccent,
                    onPressed: () {
                      setState(() {
                        leftDice = getRandomDice();
                        rightDice = getRandomDice();
                        // showToast('Left dice : $leftDice / Right dice : $rightDice');
                      });
                    },
                ),
            )
          ],
        ),
      ),
    );
  }
}