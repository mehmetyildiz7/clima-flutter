import 'package:geolocator/geolocator.dart';

class Location{
  double longitude;
  double latitude;

  Future<void> getCurrentLocation() async {
    try{
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      this.longitude = position.longitude;
      this.latitude = position.latitude;
      print(this.latitude);
      print(this.longitude);
    }catch(e){
      print(e);
    }
  }
}