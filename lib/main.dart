import 'package:flutter/material.dart';
import 'package:tables/home_screen/HomePage.dart';

void main() {
  runApp(const MyHomePage());
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
