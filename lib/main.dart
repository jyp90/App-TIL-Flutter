import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: const Text("VELY"),
        backgroundColor: Colors.amber[700],
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
                backgroundImage: AssetImage("assets/vely.png"),
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
            const Text("VELY",
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
            const Text("VELY SUPER SKILLS",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ) // 텍스트 스타일 추가
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text("14",
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
                Text("꼬불꼬불 흰 털",
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
                Text("콩 3개",
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
                Text("귀여운 짖음",
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                    )),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage("assets/roopy.png"),
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

