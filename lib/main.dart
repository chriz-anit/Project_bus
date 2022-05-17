import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_bus/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyBus',
      theme:  Theme.of(context).copyWith(
        appBarTheme: Theme.of(context).appBarTheme.copyWith(backgroundColor: Colors.teal[900]),
      ),
      home: const HomePage(),
    );
  }
}