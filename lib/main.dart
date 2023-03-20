import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

// Widget 은 기본적으로 상속하면 immutable (불변)
class MyAppState extends State<MyApp> { // 통상 Stateful widget 을 만들때는 stateless 이름 뒤에 State 를 붙임
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times:'),
              Text('$counter',
                style: Theme.of(context).textTheme.displaySmall,),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: (){
                      setState(() {
                        counter++;
                      });
                    },
                  ),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: (){
                      setState(() {
                        counter--;
                      });
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
