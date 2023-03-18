import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snack Bar'),
        centerTitle: true,
      ),
      body: const MySnackBar(),
    );
  }

}

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
          child: const Text('Show me'),
          onPressed: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(
                content: Text('Hello',
                textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white
                    ),
                ),
              backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
            )
            );
          }
      ),
    );
  }
}
