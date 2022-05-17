import 'package:flutter/material.dart';

class BusAPage extends StatefulWidget {
  const BusAPage({Key? key}) : super(key: key);

  @override
  State<BusAPage> createState() => _BusAPageState();
}

class _BusAPageState extends State<BusAPage> {
  get margin => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus A'),
      ),
      body: Center(
        child: Column(  
        
      ),
      ),
    );
  }
}
