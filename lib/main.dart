import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './login.dart';
import './favorite.dart';
import './profile.dart';
import './search.dart';
import './write.dart';
import './alarm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return /*MultiProvider(
      providers: [
        ChangeNotifierProxyProvider(
            create: (context) => HeartList(),
            update: update
        )
      ],
      child: */MaterialApp(
        title: 'UniBuddy',
        theme: ThemeData(
          primaryColor: Colors.blue
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomePage(),
          '/login': (context) => const LoginPage(),
          '/favorite': (context) => const LikePage(),
          '/profile': (context) => const ProfilePage(),
        },
      );
    //);
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final screens = [
    const LikePage(),
    const SearchPage(),
    const WritePage(),
    const AlarmPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UniBuddy'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            //추가 필요
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          )
        ],
      ),
      body: screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '찜한 목록',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: '글쓰기',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '알림',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '프로필',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}