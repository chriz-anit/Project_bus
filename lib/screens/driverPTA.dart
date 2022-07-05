// ignore: file_names
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:location/location.dart';
import 'package:app_settings/app_settings.dart';

class DriverPTA extends StatelessWidget {
  const DriverPTA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Scaffold(body: FireMap()));
  }
}

class FireMap extends StatefulWidget {
  const FireMap({Key? key}) : super(key: key);

  @override
  State<FireMap> createState() => _FireMapState();
}

class _FireMapState extends State<FireMap> {
  final database = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    location.enableBackgroundMode(enable: true);
    
    return Scaffold(
        appBar: AppBar(
          title: const Text("PTA Bus Location"),
          backgroundColor: Color.fromARGB(255, 117, 154, 255),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(children: [
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  _locationPermission();
                  bool ison = await location.serviceEnabled();
                  if (!ison) {
                    //if device is off
                    bool isturnedon = await location.requestService();
                    if (isturnedon) {
                      print("GPS device is turned ON");
                    } else {
                      print("GPS Device is still OFF");
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 117, 154, 255),
                ),
                child: Text("Turn On GPS")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  _initialLoc();
                  _movingBus();
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 117, 154, 255),
                ),
                child: const Text("Share Location")),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  AppSettings.openLocationSettings();
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFF4D4D),
                ),
                child: Text("Turn Off GPS"))
          ]),
        ));
  }

  Location location = Location();
  DatabaseReference ref = FirebaseDatabase.instance.ref();

  _locationPermission() async {
    PermissionStatus _permissionGranted;

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
  }

  _initialLoc() async {
    LocationData _currentPosition;
    final locref = database.child('locationPTA');
    _currentPosition = await location.getLocation();
    print("$_currentPosition.latitude, $_currentPosition.longitude");
    locref.set({
      'latitude': _currentPosition.latitude,
      'longitude': _currentPosition.longitude
    });
  }

  _movingBus() async {
    final locref = database.child('locationPTA');
    location.onLocationChanged.listen((LocationData currentLocation) {
      print("$currentLocation.latitude, $currentLocation.longitude");
      locref.set({
        'latitude': currentLocation.latitude,
        'longitude': currentLocation.longitude,
      });
    });
  }
}
