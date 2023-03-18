import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbard icon '),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu button clicked ');
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print('shopping_cart button clicked ');
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search button clicked ');
              }),
        ],
      ),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/vely.png'),
            backgroundColor: Colors.white,
          ),
          otherAccountsPictures: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/roopy.png'),
              backgroundColor: Colors.white,
            ),
            // CircleAvatar(
            //   backgroundImage: AssetImage(
            //       'assets/roopy.png'
            //   ),
            //   backgroundColor: Colors.white,
            // ),
          ],
          accountName: Text('vely'),
          accountEmail: Text('jyp@kakao.com'),
          onDetailsPressed: () {
            print('arrow is clicked');
          },
          decoration: BoxDecoration(
              color: Colors.red[200],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              )),
        ),
        ListTile(
          leading: Icon(Icons.home, color: Colors.grey[850]),
          title: Text('Home'),
          onTap: () {
            print('Home is clicked');
          },
          trailing: Icon(Icons.add),
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.grey[850]),
          title: Text('Setting'),
          onTap: () {
            print('Home is clicked');
          },
          trailing: Icon(Icons.add),
        ),
        ListTile(
          leading: Icon(Icons.question_answer, color: Colors.grey[850]),
          title: Text('Q&A'),
          onTap: () {
            print('Q&A is clicked');
          },
          trailing: Icon(Icons.add),
        )
      ])),
    );
  }
}
