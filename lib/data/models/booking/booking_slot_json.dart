import 'package:ifit/data/models/booking/booking_fee_json.dart';
import 'package:ifit/data/models/equipment_type_json.dart';
import 'package:ifit/domain/entities/booking/booking_slot.dart';

import '../studio/studio_json.dart';
import 'studio_slot_json.dart';

class BookingSlotJson {
  final String? extendStart;
  final String? extendEnd;
  final String? nextAvailableDate;
  final List<BookingSlotResultJson>? results;

  BookingSlotJson({
    this.extendStart,
    this.extendEnd,
    this.nextAvailableDate,
    this.results,
  });

  factory BookingSlotJson.fromJson(Map<String, dynamic> json) {
    return BookingSlotJson(
      extendStart: json['extendStart'],
      extendEnd: json['extendEnd'],
      results: json['results'] != null
          ? (json['results'] as List)
                .map((i) => BookingSlotResultJson.fromJson(i))
                .toList()
          : null,
      nextAvailableDate: json['nextAvailableDate'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['extendStart'] = extendStart;
    data['extendEnd'] = extendEnd;
    data['nextAvailableDate'] = nextAvailableDate;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  BookingSlot toDomain() {
    return BookingSlot(
      nextAvailableDate: nextAvailableDate ?? '',
      extendEnd: extendEnd,
      extendStart: extendStart,
      results: results?.map((slot) => slot.toDomain()).toList() ?? [],
    );
  }
}

class BookingSlotResultJson {
  final StudioJson? studio;
  final List<StudioSlotJson>? groups;
  final List<EquipmentTypeJson>? equipmentGroups;

  BookingSlotResultJson({this.studio, this.groups, this.equipmentGroups});

  factory BookingSlotResultJson.fromJson(Map<String, dynamic> json) {
    return BookingSlotResultJson(
      studio: json['studio'] != null
          ? StudioJson.fromJson(json['studio'])
          : null,
      groups: json['groups'] != null
          ? (json['groups'] as List)
                .map((i) => StudioSlotJson.fromJson(i))
                .toList()
          : null,
      equipmentGroups: json['equipmentGroups'] != null
          ? (json['equipmentGroups'] as List).expand((group) {
              var equipment = (group['equipment'] as List).first;
              return [
                EquipmentTypeJson(
                  id: equipment['type']['id'],
                  name: equipment['type']?['name'],
                  code: equipment['code'],
                  privacy: equipment['privacy'],
                  secondaryId: equipment['id'],
                  fees: BookingFeeJson.fromJson(equipment['fees']),
                ),
              ];
            }).toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (studio != null) {
      data['studio'] = studio!.toJson();
    }
    if (groups != null) {
      data['groups'] = groups!.map((v) => v.toJson()).toList();
    }
    if (equipmentGroups != null) {
      data['equipmentGroups'] = equipmentGroups!
          .map((v) => v.toJson())
          .toList();
    }

    return data;
  }

  BookingSlotResult toDomain() {
    return BookingSlotResult(
      studio: studio?.toDomain(),
      groups: groups?.map((group) => group.toDomain()).toList(),
      equipmentGroups: equipmentGroups
          ?.map((group) => group.toDomain())
          .toList()
          .toSet()
          .toList(),
    );
  }
}
