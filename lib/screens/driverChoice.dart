import 'package:flutter/material.dart';
import 'package:project_bus/screens/driverA.dart';
import 'package:project_bus/screens/driverPTA.dart';
import 'package:project_bus/components/background.dart';

class DriverChoicePage extends StatefulWidget {
  const DriverChoicePage({Key? key}) : super(key: key);

  @override
  State<DriverChoicePage> createState() => _DriverChoicePageState();
}

class _DriverChoicePageState extends State<DriverChoicePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 40),
            child: TextButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(300, 30),
                backgroundColor: Color.fromARGB(255, 117, 154, 255),
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DriverA()),
                );
              },
              child: const Text(
                'Bus A',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            child: TextButton(
              style: TextButton.styleFrom(
                minimumSize: const Size(300, 50),
                backgroundColor: Color.fromARGB(255, 117, 154, 255),
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DriverPTA()),
                );
              },
              child: const Text(
                'PTA Bus',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
