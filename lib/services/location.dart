import 'package:geolocator/geolocator.dart';

class Location{

  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      // LocationPermission permission;
      // permission = await Geolocator.requestPermission();  //uygulamanın konumunu kullanması için izin alman gereken kod bloğu

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);  //anlık konumunu çağıran kod bloğu
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch (e) {
      print(e);
    }
  }
}