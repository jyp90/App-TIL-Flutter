import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mungmoong App",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduce vely!')
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Hello my pretty dog"),
            Text("His name is vely"),
            Text("He wear white furs")
          ]
        )
      )
    );
  }
}

