import '../../../domain/entities/studio/address_component.dart';

class AddressComponentJson {
  String? longName;
  String? shortName;
  List<String>? types;

  AddressComponentJson({this.longName, this.shortName, this.types});

  AddressComponentJson.fromJson(Map<String, dynamic> json) {
    longName = json['long_name'];
    shortName = json['short_name'];
    types = json['types'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['long_name'] = longName;
    data['short_name'] = shortName;
    data['types'] = types;
    return data;
  }

  AddressComponent toDomain(){
    return AddressComponent(
      longName: longName,
      shortName: shortName,
      types: types??[],
    );
  }
}