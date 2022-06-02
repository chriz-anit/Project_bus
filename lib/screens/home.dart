import 'package:flutter/material.dart';
import 'package:project_bus/components/background.dart';
import 'package:project_bus/screens/busa.dart';
import 'package:project_bus/screens/ptabus.dart';
import 'package:project_bus/screens/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get margin => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => const Login()),);
        },
        backgroundColor: Color.fromARGB(255, 117, 154, 255),
        child: const Icon(Icons.account_circle,size:55),
      ),
      
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: const Text(
                "EzBus",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 117, 154, 255),
                  fontSize: 50
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(300, 30),
                  backgroundColor: Color.fromARGB(255, 117, 154, 255),
                  primary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const BusAPage()),);
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
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const PtaBusPage()),);
                },
                child: const Text(
                  'PTA Bus',
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

                onPressed: () {},
                child: const Text(
                  'Notices',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
