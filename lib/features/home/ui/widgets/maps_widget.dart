import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsWidget extends StatelessWidget {
   MapsWidget({required this.myCurrentLocationCameraPosition,super.key});
  final mapController = Completer<GoogleMapController>();
  final CameraPosition myCurrentLocationCameraPosition;
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      // onTap: (LatLng latlng) {
      //   markers.add(Marker(markerId: MarkerId("1"),position: LatLng(latlng.latitude, latlng.longitude)));
      //   setState(() {
      //
      //   });
      // },
      // markers: markers.toSet(),
      mapType: MapType.normal,
      indoorViewEnabled: true,
      buildingsEnabled: true,
      myLocationEnabled: true,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
      initialCameraPosition: myCurrentLocationCameraPosition,

      onMapCreated: (GoogleMapController controller) {
        mapController.complete(controller);
      },
    );
  }
}
