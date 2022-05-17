import 'package:flutter/material.dart';

class PtaBusPage extends StatefulWidget {
  const PtaBusPage({Key? key}) : super(key: key);

  @override
  State<PtaBusPage> createState() => _PtaBusPageState();
}

class _PtaBusPageState extends State<PtaBusPage> {
  get margin => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PTA Bus'),
      ),
      body: Center(
        child: Column(  
        
      ),
      ),
    );
  }
}
