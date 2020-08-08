import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const MaterialColor raspberry =
      MaterialColor(raspberryPrimaryValue, <int, Color>{
    50: Color(0xFFFCE2EC),
    100: Color(0xFFF7B6CE),
    200: Color(0xFFF185AE),
    300: Color(0xFFEB548E),
    400: Color(0xFFE73075),
    500: Color(raspberryPrimaryValue),
    600: Color(0xFFE00A55),
    700: Color(0xFFDC084B),
    800: Color(0xFFD80641),
    900: Color(0xFFD00330),
  });
  static const int raspberryPrimaryValue = 0xFFE30B5D;

  static const MaterialColor raspberryAccent =
      MaterialColor(raspberryAccentValue, <int, Color>{
    100: Color(0xFFFFF8F9),
    200: Color(raspberryAccentValue),
    400: Color(0xFFFF92A4),
    700: Color(0xFFFF798F),
  });
  static const int raspberryAccentValue = 0xFFFFC5CF;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raspi Tank',
      theme: ThemeData(
        primarySwatch: raspberry,
      ),
      home: EntryPage(),
    );
  }
}

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entry Page'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton.icon(
            icon: const Icon(Icons.add),
            onPressed: () {
              // next page
            },
            label: Text('コマンダーを追加'),
          ),
        ),
      ),
    );
  }
}
