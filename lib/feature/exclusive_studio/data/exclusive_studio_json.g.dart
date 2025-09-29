// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exclusive_studio_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExclusiveStudioListJson _$ExclusiveStudioListJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ExclusiveStudioListJson', json, ($checkedConvert) {
  final val = ExclusiveStudioListJson();
  $checkedConvert(
    'items',
    (v) => val.items = (v as List<dynamic>?)
        ?.map((e) => ExclusiveStudioJson.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
  $checkedConvert('totalItems', (v) => val.totalItems = v as num?);
  $checkedConvert('totalPages', (v) => val.totalPages = v as num?);
  $checkedConvert('currentPage', (v) => val.currentPage = v as num?);
  $checkedConvert('pageSize', (v) => val.pageSize = v as num?);
  return val;
});

Map<String, dynamic> _$ExclusiveStudioListJsonToJson(
  ExclusiveStudioListJson instance,
) => <String, dynamic>{
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'totalItems': instance.totalItems,
  'totalPages': instance.totalPages,
  'currentPage': instance.currentPage,
  'pageSize': instance.pageSize,
};

ExclusiveStudioJson _$ExclusiveStudioJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ExclusiveStudioJson', json, ($checkedConvert) {
  final val = ExclusiveStudioJson();
  $checkedConvert('id', (v) => val.id = v as String?);
  $checkedConvert('isExclusive', (v) => val.isExclusive = v as bool?);
  $checkedConvert('status', (v) => val.status = v as String?);
  $checkedConvert('statusLabel', (v) => val.statusLabel = v as String?);
  $checkedConvert('deleted', (v) => val.deleted = v as bool?);
  $checkedConvert(
    'studio',
    (v) => val.studio = v == null
        ? null
        : ExclusiveStudioDetailsJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert('instructorName', (v) => val.instructorName = v as String?);
  $checkedConvert('instructorCode', (v) => val.instructorCode = v as String?);
  $checkedConvert('instructorEmail', (v) => val.instructorEmail = v as String?);
  $checkedConvert('instructorPhone', (v) => val.instructorPhone = v as String?);
  $checkedConvert(
    'workHours',
    (v) => val.workHours = (v as List<dynamic>?)
        ?.map(
          (e) =>
              ExclusiveStudioWorkHoursJson.fromJson(e as Map<String, dynamic>),
        )
        .toList(),
  );
  return val;
});

Map<String, dynamic> _$ExclusiveStudioJsonToJson(
  ExclusiveStudioJson instance,
) => <String, dynamic>{
  'id': instance.id,
  'isExclusive': instance.isExclusive,
  'status': instance.status,
  'statusLabel': instance.statusLabel,
  'deleted': instance.deleted,
  'studio': instance.studio?.toJson(),
  'instructorName': instance.instructorName,
  'instructorCode': instance.instructorCode,
  'instructorEmail': instance.instructorEmail,
  'instructorPhone': instance.instructorPhone,
  'workHours': instance.workHours?.map((e) => e.toJson()).toList(),
};

ExclusiveStudioDetailsJson _$ExclusiveStudioDetailsJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ExclusiveStudioDetailsJson', json, ($checkedConvert) {
  final val = ExclusiveStudioDetailsJson();
  $checkedConvert('id', (v) => val.id = v as String?);
  $checkedConvert('name', (v) => val.name = v as String?);
  $checkedConvert('address', (v) => val.address = v as String?);
  $checkedConvert(
    'pictures',
    (v) =>
        val.pictures = (v as List<dynamic>?)?.map((e) => e as String).toList(),
  );
  return val;
});

Map<String, dynamic> _$ExclusiveStudioDetailsJsonToJson(
  ExclusiveStudioDetailsJson instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'address': instance.address,
  'pictures': instance.pictures,
};

ExclusiveStudioWorkHoursJson _$ExclusiveStudioWorkHoursJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ExclusiveStudioWorkHoursJson', json, ($checkedConvert) {
  final val = ExclusiveStudioWorkHoursJson();
  $checkedConvert('type', (v) => val.type = v as String?);
  $checkedConvert(
    'slots',
    (v) => val.slots = (v as List<dynamic>?)
        ?.map((e) => ExclusiveSlotJson.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
  return val;
});

Map<String, dynamic> _$ExclusiveStudioWorkHoursJsonToJson(
  ExclusiveStudioWorkHoursJson instance,
) => <String, dynamic>{
  'type': instance.type,
  'slots': instance.slots?.map((e) => e.toJson()).toList(),
};

ExclusiveSlotJson _$ExclusiveSlotJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ExclusiveSlotJson', json, ($checkedConvert) {
      final val = ExclusiveSlotJson();
      $checkedConvert('start', (v) => val.start = v as String?);
      $checkedConvert('end', (v) => val.end = v as String?);
      return val;
    });

Map<String, dynamic> _$ExclusiveSlotJsonToJson(ExclusiveSlotJson instance) =>
    <String, dynamic>{'start': instance.start, 'end': instance.end};

ExclusiveStudioRatesJson _$ExclusiveStudioRatesJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ExclusiveStudioRatesJson', json, ($checkedConvert) {
  final val = ExclusiveStudioRatesJson();
  $checkedConvert('type', (v) => val.type = v as String?);
  $checkedConvert(
    'rates',
    (v) => val.rates = (v as List<dynamic>?)
        ?.map((e) => ExclusiveRatesJson.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
  return val;
});

Map<String, dynamic> _$ExclusiveStudioRatesJsonToJson(
  ExclusiveStudioRatesJson instance,
) => <String, dynamic>{
  'type': instance.type,
  'rates': instance.rates?.map((e) => e.toJson()).toList(),
};

ExclusiveRatesJson _$ExclusiveRatesJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ExclusiveRatesJson', json, ($checkedConvert) {
      final val = ExclusiveRatesJson();
      $checkedConvert('start', (v) => val.start = v as String?);
      $checkedConvert('end', (v) => val.end = v as String?);
      $checkedConvert('price', (v) => val.price = v as String?);
      return val;
    });

Map<String, dynamic> _$ExclusiveRatesJsonToJson(ExclusiveRatesJson instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'price': instance.price,
    };
