import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PtaBusPage extends StatefulWidget {
  const PtaBusPage({Key? key}) : super(key: key);

  @override
  State<PtaBusPage> createState() => _PtaBusPageState();
}

class _PtaBusPageState extends State<PtaBusPage> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(8.470718029926587, 76.97944985495229);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PTA Bus'),
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
