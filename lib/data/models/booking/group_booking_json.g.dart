// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_booking_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingGroupClassJson _$BookingGroupClassJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BookingGroupClassJson', json, ($checkedConvert) {
  final val = BookingGroupClassJson(
    id: $checkedConvert('id', (v) => v as String?),
    gpClassLinkId: $checkedConvert('gpClassLinkId', (v) => v as String?),
    name: $checkedConvert('name', (v) => v as String?),
    startAt: $checkedConvert('startAt', (v) => v as String?),
    endAt: $checkedConvert('endAt', (v) => v as String?),
    minMemberCt: $checkedConvert('minMemberCt', (v) => v as num?),
    maxMemberCt: $checkedConvert('maxMemberCt', (v) => v as num?),
    slotsConflict: $checkedConvert('slotsConflict', (v) => v as bool?),
    currency: $checkedConvert('currency', (v) => v as String?),
    instructorPrice: $checkedConvert('instructorPrice', (v) => v as String?),
    remark: $checkedConvert('remark', (v) => v as String?),
    events: $checkedConvert(
      'events',
      (v) => (v as List<dynamic>?)
          ?.map((e) => Events.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    instructorId: $checkedConvert('instructorId', (v) => v as String?),
    instructor: $checkedConvert(
      'instructor',
      (v) => v == null
          ? null
          : BookingGroupClassMemberJson.fromJson(v as Map<String, dynamic>),
    ),
    totalBooked: $checkedConvert('totalBooked', (v) => v as num?),
    totalSlots: $checkedConvert('totalSlots', (v) => v as num?),
    intensity: $checkedConvert('intensity', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$BookingGroupClassJsonToJson(
  BookingGroupClassJson instance,
) => <String, dynamic>{
  'id': instance.id,
  'gpClassLinkId': instance.gpClassLinkId,
  'name': instance.name,
  'startAt': instance.startAt,
  'endAt': instance.endAt,
  'minMemberCt': instance.minMemberCt,
  'maxMemberCt': instance.maxMemberCt,
  'slotsConflict': instance.slotsConflict,
  'currency': instance.currency,
  'instructorPrice': instance.instructorPrice,
  'remark': instance.remark,
  'instructorId': instance.instructorId,
  'instructor': instance.instructor?.toJson(),
  'totalSlots': instance.totalSlots,
  'totalBooked': instance.totalBooked,
  'events': instance.events?.map((e) => e.toJson()).toList(),
  'intensity': instance.intensity,
};

BookingGroupClassMemberJson _$BookingGroupClassMemberJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BookingGroupClassMemberJson', json, ($checkedConvert) {
  final val = BookingGroupClassMemberJson(
    fullName: $checkedConvert('fullName', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$BookingGroupClassMemberJsonToJson(
  BookingGroupClassMemberJson instance,
) => <String, dynamic>{'fullName': instance.fullName};

Events _$EventsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Events', json, ($checkedConvert) {
  final val = Events(
    id: $checkedConvert('id', (v) => v as String?),
    studioId: $checkedConvert('studioId', (v) => v as String?),
    type: $checkedConvert('type', (v) => v as String?),
    classType: $checkedConvert('classType', (v) => v as String?),
    bookingType: $checkedConvert('bookingType', (v) => v as String?),
    groupClassStatus: $checkedConvert('groupClassStatus', (v) => v as String?),
    bookingRefNo: $checkedConvert('bookingRefNo', (v) => v as String?),
    bookingStatus: $checkedConvert('bookingStatus', (v) => v as String?),
    bookingFeesItems: $checkedConvert(
      'bookingFeesItems',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => GroupBookingFeesItems.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    bookingFeesTotal: $checkedConvert('bookingFeesTotal', (v) => v as String?),
    bookingFeestotalCredits: $checkedConvert(
      'bookingFeestotalCredits',
      (v) => v as String?,
    ),
    startDate: $checkedConvert('startDate', (v) => v as String?),
    startTime: $checkedConvert('startTime', (v) => v as String?),
    endDate: $checkedConvert('endDate', (v) => v as String?),
    endTime: $checkedConvert('endTime', (v) => v as String?),
    equipmentId: $checkedConvert('equipmentId', (v) => v as String?),
    equipment: $checkedConvert(
      'equipment',
      (v) =>
          v == null ? null : EquipmentJson.fromJson(v as Map<String, dynamic>),
    ),
    instructorId: $checkedConvert('instructorId', (v) => v as String?),
    memberId: $checkedConvert('memberId', (v) => v as String?),
    member: $checkedConvert(
      'member',
      (v) => v == null ? null : Member.fromJson(v as Map<String, dynamic>),
    ),
    status: $checkedConvert('status', (v) => v as String?),
    checkInAt: $checkedConvert('checkInAt', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$EventsToJson(Events instance) => <String, dynamic>{
  'id': instance.id,
  'studioId': instance.studioId,
  'type': instance.type,
  'classType': instance.classType,
  'bookingType': instance.bookingType,
  'groupClassStatus': instance.groupClassStatus,
  'bookingRefNo': instance.bookingRefNo,
  'bookingStatus': instance.bookingStatus,
  'bookingFeesItems': instance.bookingFeesItems
      ?.map((e) => e.toJson())
      .toList(),
  'bookingFeesTotal': instance.bookingFeesTotal,
  'bookingFeestotalCredits': instance.bookingFeestotalCredits,
  'startDate': instance.startDate,
  'startTime': instance.startTime,
  'endDate': instance.endDate,
  'endTime': instance.endTime,
  'equipmentId': instance.equipmentId,
  'equipment': instance.equipment?.toJson(),
  'instructorId': instance.instructorId,
  'memberId': instance.memberId,
  'member': instance.member?.toJson(),
  'status': instance.status,
  'checkInAt': instance.checkInAt,
};

GroupBookingFeesItems _$GroupBookingFeesItemsFromJson(
  Map<String, dynamic> json,
) => GroupBookingFeesItems(
  name: json['name'] as String?,
  price: json['price'] as String?,
  credit: json['credit'] as String?,
  currency: json['currency'] as String?,
  sign: json['sign'] as String?,
);

Map<String, dynamic> _$GroupBookingFeesItemsToJson(
  GroupBookingFeesItems instance,
) => <String, dynamic>{
  'name': instance.name,
  'price': instance.price,
  'credit': instance.credit,
  'currency': instance.currency,
  'sign': instance.sign,
};

Member _$MemberFromJson(Map<String, dynamic> json) =>
    Member(fullName: json['fullName'] as String?);

Map<String, dynamic> _$MemberToJson(Member instance) => <String, dynamic>{
  'fullName': instance.fullName,
};
