import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            Text('アカウントの情報を入力'),
            TextFormField(
              decoration: InputDecoration(hintText: 'アカウント名'),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'パスワード'),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: 'パスワード 再確認'),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: 'コマンダー名'),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: RaisedButton.icon(
                icon: const Icon(Icons.add),
                label: Text('登録'),
                onPressed: () {
                  // validation, register
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
