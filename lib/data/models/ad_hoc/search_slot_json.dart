import 'package:ifit/core/utils/config_reader.dart';
import 'package:ifit/domain/entities/ad_hoc/search_ad_hoc_slot_entity.dart';

class SearchAdHocSlotJson {
  String? startTime;
  String? endTime;
  List<Equipment>? equipment;

  SearchAdHocSlotJson({this.startTime, this.endTime, this.equipment});

  factory SearchAdHocSlotJson.fromJson(Map<String, dynamic> json) {
    return SearchAdHocSlotJson(
      startTime: json['startTime'],
      endTime: json['endTime'],
      equipment:
          json['equipment'] != null
              ? (json['equipment'] as List)
                  .map((i) => Equipment.fromJson(i))
                  .toList()
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    if (equipment != null) {
      data['equipment'] = equipment!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  SearchAdHocSlotEntity toDomain() {
    return SearchAdHocSlotEntity(
      startTime: startTime,
      endTime: endTime,
      equipment: equipment?.map((group) => group.toDomain()).toList(),
    );
  }
}

class Equipment {
  String? id;
  String? studioId;
  Type? type;
  String? code;
  bool? privacy;

  Equipment({this.id, this.studioId, this.type, this.code, this.privacy});

  Equipment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    studioId = json['studioId'];
    type = json['type'] != null ? Type.fromJson(json['type']) : null;
    code = json['code'];
    privacy = json['privacy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['studioId'] = studioId;
    if (type != null) {
      data['type'] = type!.toJson();
    }
    data['code'] = code;
    data['privacy'] = privacy;
    return data;
  }

  EquipmentEntity toDomain() {
    return EquipmentEntity(
      id: id,
      studioId: studioId,
      type: type?.toDomain(),
      code: code,
      privacy: privacy,
      image: '${ConfigReader.resourceUrl}${type?.id?.toLowerCase()}.png',
    );
  }
}

class Type {
  String? id;
  String? name;

  Type({this.id, this.name});

  Type.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }

  TypeEntity toDomain() {
    return TypeEntity(id: id, name: name);
  }
}
