import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './login.dart';
import './favorite.dart';
import './profile.dart';
import './search.dart';
import './write.dart';
import './chat.dart';
import './home.dart';

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
    const ListPage(),
    const SearchPage(),
    const WritePage(),
    const LikePage(),
    const AlarmPage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('UniBuddy'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              //추가 필요
            },
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle_sharp),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            )
          ],
        ),
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 15,
          unselectedFontSize: 10,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈',
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
              icon: Icon(Icons.favorite),
              label: '찜한 목록',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: '채팅',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) => setState(() => _selectedIndex = index),
        ),
      ),
    );
  }
}