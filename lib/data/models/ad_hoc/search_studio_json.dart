import 'package:ifit/domain/entities/ad_hoc/search_studio_entity.dart';

class AdHocStudioJson {
  String? id;
  String? name;
  String? location;

  AdHocStudioJson({this.id, this.name, this.location});

  AdHocStudioJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['location'] = location;
    return data;
  }

  AdHocStudioEntity toDomain() {
    return AdHocStudioEntity(
      id: id ?? '',
      name: name ?? '',
      location: location ?? '',
    );
  }
}
