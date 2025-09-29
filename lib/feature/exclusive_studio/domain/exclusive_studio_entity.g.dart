// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exclusive_studio_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExclusiveStudioListEntity _$ExclusiveStudioListEntityFromJson(
  Map<String, dynamic> json,
) => ExclusiveStudioListEntity(
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => ExclusiveStudioEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalItems: json['totalItems'] as num?,
  totalPages: json['totalPages'] as num?,
  currentPage: json['currentPage'] as num?,
  pageSize: json['pageSize'] as num?,
);

Map<String, dynamic> _$ExclusiveStudioListEntityToJson(
  ExclusiveStudioListEntity instance,
) => <String, dynamic>{
  'items': instance.items,
  'totalItems': instance.totalItems,
  'totalPages': instance.totalPages,
  'currentPage': instance.currentPage,
  'pageSize': instance.pageSize,
};

ExclusiveStudioEntity _$ExclusiveStudioEntityFromJson(
  Map<String, dynamic> json,
) => ExclusiveStudioEntity(
  id: json['id'] as String?,
  isExclusive: json['isExclusive'] as bool?,
  status: json['status'] as String?,
  statusLabel: json['statusLabel'] as String?,
  deleted: json['deleted'] as bool?,
  studio: json['studio'] == null
      ? null
      : ExclusiveStudioDetailsEntity.fromJson(
          json['studio'] as Map<String, dynamic>,
        ),
  instructorName: json['instructorName'] as String?,
  instructorCode: json['instructorCode'] as String?,
  instructorEmail: json['instructorEmail'] as String?,
  instructorPhone: json['instructorPhone'] as String?,
  workHours: (json['workHours'] as List<dynamic>?)
      ?.map(
        (e) =>
            ExclusiveStudioWorkHoursEntity.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ExclusiveStudioEntityToJson(
  ExclusiveStudioEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'isExclusive': instance.isExclusive,
  'status': instance.status,
  'statusLabel': instance.statusLabel,
  'deleted': instance.deleted,
  'studio': instance.studio,
  'instructorName': instance.instructorName,
  'instructorCode': instance.instructorCode,
  'instructorEmail': instance.instructorEmail,
  'instructorPhone': instance.instructorPhone,
  'workHours': instance.workHours,
};

ExclusiveStudioDetailsEntity _$ExclusiveStudioDetailsEntityFromJson(
  Map<String, dynamic> json,
) => ExclusiveStudioDetailsEntity(
  id: json['id'] as String?,
  name: json['name'] as String?,
  address: json['address'] as String?,
  pictures: (json['pictures'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ExclusiveStudioDetailsEntityToJson(
  ExclusiveStudioDetailsEntity instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'address': instance.address,
  'pictures': instance.pictures,
};

ExclusiveStudioWorkHoursEntity _$ExclusiveStudioWorkHoursEntityFromJson(
  Map<String, dynamic> json,
) => ExclusiveStudioWorkHoursEntity(
  type: json['type'] as String?,
  slots: (json['slots'] as List<dynamic>?)
      ?.map((e) => ExclusiveSlotEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ExclusiveStudioWorkHoursEntityToJson(
  ExclusiveStudioWorkHoursEntity instance,
) => <String, dynamic>{'type': instance.type, 'slots': instance.slots};

ExclusiveSlotEntity _$ExclusiveSlotEntityFromJson(Map<String, dynamic> json) =>
    ExclusiveSlotEntity(
      start: json['start'] as String?,
      end: json['end'] as String?,
    );

Map<String, dynamic> _$ExclusiveSlotEntityToJson(
  ExclusiveSlotEntity instance,
) => <String, dynamic>{'start': instance.start, 'end': instance.end};

ExclusiveStudioRatesEntity _$ExclusiveStudioRatesEntityFromJson(
  Map<String, dynamic> json,
) => ExclusiveStudioRatesEntity(
  type: json['type'] as String?,
  rates: (json['rates'] as List<dynamic>?)
      ?.map((e) => ExclusiveRatesEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ExclusiveStudioRatesEntityToJson(
  ExclusiveStudioRatesEntity instance,
) => <String, dynamic>{'type': instance.type, 'rates': instance.rates};

ExclusiveRatesEntity _$ExclusiveRatesEntityFromJson(
  Map<String, dynamic> json,
) => ExclusiveRatesEntity(
  start: json['start'] as String?,
  end: json['end'] as String?,
  price: json['price'] as String?,
);

Map<String, dynamic> _$ExclusiveRatesEntityToJson(
  ExclusiveRatesEntity instance,
) => <String, dynamic>{
  'start': instance.start,
  'end': instance.end,
  'price': instance.price,
};
