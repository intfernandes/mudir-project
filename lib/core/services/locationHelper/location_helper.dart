import 'package:geolocator/geolocator.dart';

class LocationHelper{
  static Position? position;
  static Future<Position> getCurrentLocation() async {
    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!isServiceEnabled){
      await Geolocator.requestPermission();
    }
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    );
  }
  static Future<void> getMyCurrentLocation() async {
    position = await LocationHelper.getCurrentLocation();
  }
}