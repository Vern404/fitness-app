import 'package:ifit/domain/entities/equipment.dart';

class EquipmentJson {
  String? instructorId;
  String? typeId;
  String? typeName;

  EquipmentJson({this.instructorId, this.typeId, this.typeName});

  EquipmentJson.fromJson(Map<String, dynamic> json) {
    instructorId = json['instructorId'];
    typeId = json['typeId'];
    typeName = json['typeName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['instructorId'] = instructorId;
    data['typeId'] = typeId;
    data['typeName'] = typeName;
    return data;
  }

  Equipment toDomain() {
    return Equipment(
      instructorId: instructorId,
      typeId: typeId,
      typeName: typeName,
    );
  }
}
