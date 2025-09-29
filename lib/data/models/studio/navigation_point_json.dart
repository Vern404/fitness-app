import '../../../domain/entities/studio/navigation_point.dart';
import 'location_json.dart';

class NavigationPointJson {
  LocationJson? location;

  NavigationPointJson({this.location});

  NavigationPointJson.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? LocationJson.fromJson(json['location'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    return data;
  }

  NavigationPoint toDomain(){
    return NavigationPoint(
      location: location?.toDomain(),
    );
  }
}