import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ScreenB'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Go to ScreenA')),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/c');
                }, child: Text('Go to ScreenC'))
              ],
            )
        )
    );
  }
}
