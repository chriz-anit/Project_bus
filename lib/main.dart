import 'package:flutter/material.dart';
import 'package:project_bus/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EzBus',
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        textTheme: GoogleFonts.rubikTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
        
        //appBarTheme: Theme.of(context).appBarTheme.copyWith(backgroundColor: Colors.teal[900]),

      home: const HomePage(),
    );
  }
}