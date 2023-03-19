import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('First Page')
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Go to the Second Page'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (_) => SecondPage() // 언더스코어(_) 는 사용하지 않는 매개변수로 플러터에서 권장사항임.
              )); // context 의 위치를 정확히 알아야 stack 으로 쌓는 것이 가능하기 떄문임
            }
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second page'),
        ),
        body: Center(
            child: ElevatedButton(
              child: Text('Go to first page'),
              onPressed: () {
                Navigator.pop(ctx); // 뒤로가기에서 커스텀하는 경우 pop 메소드를 구현하는게 맞음.
              },
            )
        )
    );
  }
}
