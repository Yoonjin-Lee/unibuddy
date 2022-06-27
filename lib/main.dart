import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './login.dart';
import './favorite.dart';
import './profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProxyProvider(
            create: (context) => heartList(),
            update: update
        )
      ],
      child: MaterialApp(
        title: 'UniBuddy',
        theme: ThemeData(
          primaryColor: Colors.blue
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(),
          '/login': (context) => LoginPage(),
          '/favorite': (context) => ,
          '/profile': (context) => ,
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UniBuddy'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            //추가 필요
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.login),
            onPressed: () {

            },
          )
        ],
      ),
    );
  }
}
