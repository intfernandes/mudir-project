import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mudir/features/home/ui/widgets/maps_widget.dart';

import '../../../core/services/locationHelper/location_helper.dart';

class Mapview extends StatelessWidget {
   Mapview({super.key});
  final CameraPosition myCurrentLocationCameraPosition = CameraPosition(
    bearing: 0.0,
    target: LatLng(
        LocationHelper.position!.latitude, LocationHelper.position!.longitude),
    tilt: 0.0,
    zoom: 11,
  );
  @override
  Widget build(BuildContext context) {
    return MapsWidget(myCurrentLocationCameraPosition: myCurrentLocationCameraPosition);
  }
}
