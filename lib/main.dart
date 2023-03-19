import 'package:flutter/material.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // 다중 페이지로 이동할 때는 이것 사용 !
      routes: {
        '/' : (ctx) => ScreenA(),
        '/b' : (ctx) => ScreenB(),
        '/c' : (ctx) => ScreenC(),
      },
    );
  }
}
