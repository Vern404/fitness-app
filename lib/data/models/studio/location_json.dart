import 'package:ifit/domain/entities/studio/location.dart';

class LocationJson {
  double? latitude;
  double? longitude;

  LocationJson({this.latitude, this.longitude});

  LocationJson.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'] ?? json['lat'];
    longitude = json['longitude'] ?? json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    return data;
  }

  Location toDomain() {
    return Location(latitude: latitude, longitude: longitude);
  }
}
