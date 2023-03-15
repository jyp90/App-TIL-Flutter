import 'package:flutter/material.dart';

void main() => runApp(const MyApp());
const characterName = "맹수쪼꼬";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Character card",
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: const Text(characterName),
        backgroundColor: Colors.deepPurple[400],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬을 맞춰주는 속성
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/choco2.jpeg"),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0, // Divider 의 위 30, 아래 30 떨어진 의미
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            const Text("NAME",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
            ) // 텍스트 스타일 추가
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(characterName,
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(
              height: 30.0
            ),
            const Text("$characterName 레벨과 특징",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ) // 텍스트 스타일 추가
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text("93",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("콧물을 잘흘리는 애교왕",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                )),
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("하얀 수염의 맹수",
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    )),
              ],
            ),
            Row(
              children: const <Widget>[
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("식탐이 강함",
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    )),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage("assets/choco-sleep.jpeg"),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              )
            )
          ],
        ),
      )
    );
  }
}

