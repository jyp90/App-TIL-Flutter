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
              TextButton.icon(
                  onPressed: () {
                    print('Icon Button');
                  },
                  icon: Icon(
                    Icons.home,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  label: Text('Go to Home'),
                  style: TextButton.styleFrom(
                    primary: Colors.purple,
                  )),
              ElevatedButton.icon(
                  onPressed: () {
                    print('Elevated Button');
                  },
                  icon: Icon(
                    Icons.access_alarm,
                    size: 30.0,
                    color: Colors.white, // 아이콘의 색상
                  ),
                  label: Text(
                    'Set alarm',
                    style: TextStyle(color: Colors.white), // 버튼 라벨의 색상
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(200, 50),
                  )),
              OutlinedButton.icon(
                onPressed: () {
                  print('Outliend icon Button');
                },
                icon: Icon(Icons.access_time_filled,
                    size: 30.0, color: Colors.amber),
                label: Text(
                  'What time is now?',
                  style: TextStyle(color: Colors.amber),
                ),
                style: OutlinedButton.styleFrom(
                  primary: Colors.cyan
                )
              )
            ],
          ),
        ));
  }
}
