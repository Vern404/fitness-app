import 'package:ifit/core/utils/config_reader.dart';
import 'package:ifit/data/models/booking/booking_fee_json.dart';
import 'package:ifit/domain/entities/equipment_type.dart';

class EquipmentTypeJson {
  String? id;
  String? name;
  String? shortName;
  bool? privacy;
  String? secondaryId;
  String? code;
  BookingFeeJson? fees;

  EquipmentTypeJson({
    this.id,
    this.name,
    this.privacy,
    this.secondaryId,
    this.shortName,
    this.code,
    this.fees,
  });

  EquipmentTypeJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    privacy = _convertToBool(json['privacy']);
    secondaryId = json['secondaryId'];
    shortName = json['shortName'];
    code = json['code'];
    if (json['fees'] != null) {
      fees = BookingFeeJson.fromJson(json['fees']);
    }
  }

  static bool _convertToBool(dynamic value) {
    if (value is bool) return value;
    if (value is int) return value == 1;
    if (value is String) {
      return value.toLowerCase() == 'true' || value == '1';
    }
    return false; // default value if none of the above match
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['privacy'] = privacy;
    data['secondaryId'] = secondaryId;
    data['shortName'] = shortName;
    data['code'] = code;
    data['fees'] = fees?.toDomain();

    return data;
  }

  EquipmentType toDomain() {
    return EquipmentType(
      id: id,
      name: name ?? "N/A",
      code: code ?? 'N/A',
      privacy: privacy ?? false,
      secondaryId: secondaryId,
      shortName: shortName ?? code,
      fees: fees?.toDomain(),
      image: '${ConfigReader.resourceUrl}${id?.toLowerCase()}.png',
    );
  }
}
