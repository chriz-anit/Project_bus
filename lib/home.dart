import 'package:flutter/material.dart';
import 'package:project_bus/busa.dart';
import 'package:project_bus/ptabus.dart';

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
      appBar: AppBar(
        title: const Text('MyBus'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Image.asset('assets/sct.jpg'),
            const SizedBox(height: 10),
            Image.asset('assets/bus.jpg'),
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  backgroundColor: Colors.teal[900],
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const BusAPage()),);
                },
                child: const Text('Bus A'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  backgroundColor: Colors.teal[900],
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const PtaBusPage()),);
                },
                child: const Text('PTA Bus'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  backgroundColor: Colors.teal.shade900,
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 30),
                ),
                onPressed: () {},
                child: const Text('Notices'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
