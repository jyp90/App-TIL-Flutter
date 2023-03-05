import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Charactor card",
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vely'),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0.0,
      ),
      body: Center( // 화면 정중앙에 보이도록 함
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // 상단 중간 하단 정렬 관련
          children: const <Widget>[
            Text("Hello"),
            Text("Hello"),
            Text("Hello"),
          ],
        ),
      )
    );
  }
}

