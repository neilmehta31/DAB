import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//void main() => runApp(Map());

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();

}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kCampus = CameraPosition(
    bearing: 292.8334901395799,
    target: LatLng(17.544052, 78.573799),
    zoom: 16.3746,
  );

  static final CameraPosition _kAcad = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(17.544922, 78.571550),
      tilt: 59.440717697143555,
      zoom: 18.951926040649414);

  static final CameraPosition _kGate = CameraPosition(
      bearing:192.8334901395799,
      target: LatLng(17.547200, 78.572494),
      tilt: 59.440717697143555,
      zoom: 19.951926040649414);

  static final CameraPosition _kSac = CameraPosition(
      bearing: 360.8334901395799,
      target: LatLng(17.540850, 78.575262),
      tilt: 59.440717697143555,
      zoom: 19.951926040649414);
//

  static final CameraPosition _kCricket = CameraPosition(
      bearing: 350.8334901395799,
      target: LatLng(17.540021, 78.577456),
      tilt: 89.440717697143555,
      zoom: 19.51926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kCampus,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),


      floatingActionButton: SpeedDial(
//          onPressed: _goToTheLake,
//        label: Text('Lets go!'),
//        icon: Icon(Icons.directions_walk),
//provide here features of your parent FAB

        child: Icon(Icons.directions_walk),
          children: [
            SpeedDialChild(
                child: Icon(Icons.sports_cricket),
                label: 'Cricket Ground',
                onTap: _goToCricket),
            SpeedDialChild(
                child: Icon(Icons.casino),
                label: 'SAC',
                onTap: _goToSac),

            SpeedDialChild(
                child: Icon(Icons.local_library),
                label: 'Acad',
                onTap: _goToAcad),
            SpeedDialChild(
                child: Icon(Icons.school),
                label: 'Main Gate',
                onTap:  _goToGate),
          ]
      ),





//
//      FloatingActionButton.extended(
//        onPressed: _goToTheLake,
//        label: Text('Lets go!'),
//        icon: Icon(Icons.directions_walk),
//      ),
    );
  }

  Future<void> _goToAcad() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kAcad));
  }
  Future<void> _goToGate() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kGate));
  }
  Future<void> _goToSac() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kSac));
 }
  Future<void> _goToCricket() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kCricket));
  }
}

