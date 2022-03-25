import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    Position position;

    try {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      print('POSITION LAT' + latitude.toString());
      longitude = position.longitude;
    } catch (e) {
      print(e);
      position = null;
    }

    print(position);
  }
}
