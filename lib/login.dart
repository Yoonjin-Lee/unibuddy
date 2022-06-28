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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.navigate_before),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 180),
            TextField(
              controller: _idController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'ID',
              ),
            ),
            const SizedBox(height: 12,),
            TextField(
              controller: _pwController,
              decoration: const InputDecoration(
                  filled: true,
                  labelText: 'PW'
              ),
              obscureText: true,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.grey,
                  ),
                  child: const Text('NEXT'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

