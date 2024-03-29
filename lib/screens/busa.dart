import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BusAPage extends StatefulWidget {
  const BusAPage({Key? key}) : super(key: key);

  @override
  State<BusAPage> createState() => _BusAPageState();
}

class _BusAPageState extends State<BusAPage> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(8.470718029926587, 76.97944985495229);

  _retrieveLoc() {
    DatabaseReference dbref = FirebaseDatabase.instance.ref('locationA');
    dbref.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      print(data);
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    _retrieveLoc();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus A'),
        backgroundColor: Color.fromARGB(255, 117, 154, 255),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 16.0,
        ),
      ),
    );
  }

}
