import 'package:ifit/data/models/studio/location_json.dart';
import 'package:ifit/domain/entities/studio/view_port.dart';

class ViewPortJson {
  LocationJson? northeast;
  LocationJson? southwest;

  ViewPortJson({this.northeast, this.southwest});

  ViewPortJson.fromJson(Map<String, dynamic> json) {
    northeast = json['northeast'] != null
        ? LocationJson.fromJson(json['northeast'])
        : null;
    southwest = json['southwest'] != null
        ? LocationJson.fromJson(json['southwest'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (northeast != null) {
      data['northeast'] = northeast!.toJson();
    }
    if (southwest != null) {
      data['southwest'] = southwest!.toJson();
    }
    return data;
  }
  ViewPort toDomain(){
    return ViewPort(
      northeast: northeast?.toDomain(),
      southwest: southwest?.toDomain(),
    );
  }
}