import 'package:ifit/data/models/studio/location_json.dart';
import 'package:ifit/data/models/studio/view_port_json.dart';
import 'package:ifit/domain/entities/studio/geometry.dart';

class GeometryJson {
  LocationJson? location;
  String? locationType;
  ViewPortJson? viewport;

  GeometryJson({this.location, this.locationType, this.viewport});

  GeometryJson.fromJson(Map<String, dynamic> json) {
    location = json['location'] != null
        ? LocationJson.fromJson(json['location'])
        : null;
    locationType = json['location_type'];
    viewport = json['viewport'] != null
        ? ViewPortJson.fromJson(json['viewport'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['location_type'] = locationType;
    if (viewport != null) {
      data['viewport'] = viewport!.toJson();
    }
    return data;
  }
  Geometry toDomain(){
    return Geometry(
      location: location?.toDomain(),
      locationType: locationType,
      viewport: viewport?.toDomain(),
    );
  }
}