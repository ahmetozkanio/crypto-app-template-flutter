import 'package:crypto_app/src/crypto/crypto.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto App',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 24, 28, 30),
        cardColor: Color.fromARGB(255, 34, 38, 43),
      ),
      themeMode: ThemeMode.dark,
      home: Crypto(),
    );
  }
}
