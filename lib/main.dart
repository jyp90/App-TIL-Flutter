import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const MyButtons(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Button"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  print('text button');
                },
                child: Text(
                  'Text button',
                  style: TextStyle(fontSize: 20.0),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print('Elevated button');
                  },
                  child: Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent, // 버튼 색깔 옵션
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // 라운드 둥글게 옵션
                ),
                elevation: 0.0, // 그림자 제거 옵션
              ),
              ),
              OutlinedButton(onPressed: () {
                print('Outlined Button');
              }, child: Text('Outlined button'),
              style: OutlinedButton.styleFrom(
                primary: Colors.black87,
                side: BorderSide(
                  color: Colors.black87,
                  width: 2.0,
                ),
              )),
            ],
          ),
        ));
  }
}
