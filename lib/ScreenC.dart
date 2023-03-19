import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ScreenC'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Go to ScreenA')),
                ElevatedButton(onPressed: (){
                  Navigator.popAndPushNamed(context, '/b');
                }, child: Text('Go to ScreenB')),
              ],
            )
        )
    );
  }
}
