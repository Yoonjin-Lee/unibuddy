import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _idController = TextEditingController();
  final _pwController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            TextField(
              controller: _idController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'ID'
              ),
            ),
            const SizedBox(height: 12,),
            TextField(
              controller: _pwController,
              decoration: const InputDecoration(
                  filled: true,
                  labelText: 'PW'
              ),
            ),
          ],
        ),
      ),
    );
  }
}

