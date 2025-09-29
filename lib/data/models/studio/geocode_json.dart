import 'package:ifit/data/models/studio/plus_code_json.dart';
import 'package:ifit/domain/entities/studio/geocode.dart';

import 'address_component_json.dart';
import 'geometry_json.dart';
import 'navigation_point_json.dart';

class GeocodeJson {
  List<AddressComponentJson>? addressComponents;
  String? formattedAddress;
  GeometryJson? geometry;
  List<NavigationPointJson>? navigationPoints;
  String? placeId;
  PlusCodeJson? plusCode;
  List<String>? types;

  GeocodeJson({
    this.addressComponents,
    this.formattedAddress,
    this.geometry,
    this.navigationPoints,
    this.placeId,
    this.plusCode,
    this.types,
  });

  GeocodeJson.fromJson(Map<String, dynamic> json) {
    if (json['address_components'] != null) {
      addressComponents = <AddressComponentJson>[];
      json['address_components'].forEach((v) {
        addressComponents!.add(AddressComponentJson.fromJson(v));
      });
    }
    formattedAddress = json['formatted_address'];
    geometry =
        json['geometry'] != null
            ? GeometryJson.fromJson(json['geometry'])
            : null;
    if (json['navigation_points'] != null) {
      navigationPoints = <NavigationPointJson>[];
      json['navigation_points'].forEach((v) {
        navigationPoints!.add(NavigationPointJson.fromJson(v));
      });
    }
    placeId = json['place_id'];
    plusCode =
        json['plus_code'] != null
            ? PlusCodeJson.fromJson(json['plus_code'])
            : null;
    types = json['types'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (addressComponents != null) {
      data['address_components'] =
          addressComponents!.map((v) => v.toJson()).toList();
    }
    data['formatted_address'] = formattedAddress;
    if (geometry != null) {
      data['geometry'] = geometry!.toJson();
    }
    if (navigationPoints != null) {
      data['navigation_points'] =
          navigationPoints!.map((v) => v.toJson()).toList();
    }
    data['place_id'] = placeId;
    if (plusCode != null) {
      data['plus_code'] = plusCode!.toJson();
    }
    data['types'] = types;
    return data;
  }

  Geocode toDomain() {
    return Geocode(
      addressComponents:
          addressComponents
              ?.map((component) => component.toDomain())
              .toList() ??
          [],
      formattedAddress: formattedAddress,
      geometry: geometry?.toDomain(),
      navigationPoints:
          navigationPoints?.map((point) => point.toDomain()).toList() ?? [],
      placeId: placeId,
      plusCode: plusCode?.toDomain(),
      types: types ?? [],
    );
  }
}
