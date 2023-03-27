import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'info.dart';
import 'dart:async';
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  late final Future<Info> info;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login page',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Fetch Test'),
              centerTitle: true,
            ),
            body: Center(
                child: FutureBuilder<Info>(
                  future: info,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('고객번호: ' + snapshot.data!.id.toString(),
                            style: TextStyle(fontSize: 20.0),),
                          Text('고객명: ' + snapshot.data!.userName.toString(),
                            style: TextStyle(fontSize: 20.0),),
                          Text('계좌 번호: ' + snapshot.data!.account.toString(),
                            style: TextStyle(fontSize: 20.0),),
                          Text('잔액: ' + snapshot.data!.balance.toString(),
                            style: TextStyle(fontSize: 20.0),)
                        ],
                      );
                    } else if(snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return CircularProgressIndicator();
                  },

                )
            )
        )
    );
  }
}

Future<Info> fetchInfo() async {
  final response = await http.get(Uri.parse('http://localhost:8080/bank.json?key=1234'));

  if (response.statusCode == 200) {
    return Info.fromJson(json.decode(response.body));
  } else {
    throw Exception('통신 에러가 발생하였습니다.');
  }
}