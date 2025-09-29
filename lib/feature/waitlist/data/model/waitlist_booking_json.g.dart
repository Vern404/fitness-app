// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waitlist_booking_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WaitlistBookingJson _$WaitlistBookingJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('WaitlistBookingJson', json, ($checkedConvert) {
      final val = WaitlistBookingJson();
      $checkedConvert('id', (v) => val.id = v as String?);
      $checkedConvert(
        'groupClassLinkId',
        (v) => val.groupClassLinkId = v as String?,
      );
      $checkedConvert('memberId', (v) => val.memberId = v as String?);
      $checkedConvert('status', (v) => val.status = v as String?);
      $checkedConvert('promoCode', (v) => val.promoCode = v as String?);
      $checkedConvert('promoAmount', (v) => val.promoAmount = v as num?);
      $checkedConvert('createdAt', (v) => val.createdAt = v as String?);
      $checkedConvert('updatedAt', (v) => val.updatedAt = v as String?);
      $checkedConvert('createdBy', (v) => val.createdBy = v as String?);
      $checkedConvert('updatedBy', (v) => val.updatedBy = v as String?);
      $checkedConvert(
        'groupClass',
        (v) => val.groupClass = v == null
            ? null
            : BookingGroupClassJson.fromJson(v as Map<String, dynamic>),
      );
      $checkedConvert(
        'instructor',
        (v) => val.instructor = v == null
            ? null
            : InstructorJson.fromJson(v as Map<String, dynamic>),
      );
      $checkedConvert(
        'studio',
        (v) => val.studio = v == null
            ? null
            : WaitlistStudioJson.fromJson(v as Map<String, dynamic>),
      );
      $checkedConvert(
        'groupClassSlot',
        (v) => val.groupClassSlot = v == null
            ? null
            : GroupClassSlotJson.fromJson(v as Map<String, dynamic>),
      );
      $checkedConvert(
        'bookingFees',
        (v) => val.bookingFees = v == null
            ? null
            : WaitlistBookingFeesJson.fromJson(v as Map<String, dynamic>),
      );
      return val;
    });

Map<String, dynamic> _$WaitlistBookingJsonToJson(
  WaitlistBookingJson instance,
) => <String, dynamic>{
  'id': instance.id,
  'groupClassLinkId': instance.groupClassLinkId,
  'memberId': instance.memberId,
  'status': instance.status,
  'promoCode': instance.promoCode,
  'promoAmount': instance.promoAmount,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'createdBy': instance.createdBy,
  'updatedBy': instance.updatedBy,
  'groupClass': instance.groupClass?.toJson(),
  'instructor': instance.instructor?.toJson(),
  'studio': instance.studio?.toJson(),
  'groupClassSlot': instance.groupClassSlot?.toJson(),
  'bookingFees': instance.bookingFees?.toJson(),
};

GroupClassSlotJson _$GroupClassSlotJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('GroupClassSlotJson', json, ($checkedConvert) {
      final val = GroupClassSlotJson();
      $checkedConvert('date', (v) => val.date = v as String?);
      $checkedConvert('startTime', (v) => val.startTime = v as String?);
      $checkedConvert('endTime', (v) => val.endTime = v as String?);
      $checkedConvert(
        'totalBookings',
        (v) => val.totalBookings = (v as num?)?.toInt(),
      );
      $checkedConvert(
        'totalBooked',
        (v) => val.totalBooked = (v as num?)?.toInt(),
      );
      return val;
    });

Map<String, dynamic> _$GroupClassSlotJsonToJson(GroupClassSlotJson instance) =>
    <String, dynamic>{
      'date': instance.date,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'totalBookings': instance.totalBookings,
      'totalBooked': instance.totalBooked,
    };

WaitlistStudioJson _$WaitlistStudioJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('WaitlistStudioJson', json, ($checkedConvert) {
  final val = WaitlistStudioJson();
  $checkedConvert('id', (v) => val.id = v as String?);
  $checkedConvert('name', (v) => val.name = v as String?);
  $checkedConvert('descr', (v) => val.descr = v as String?);
  $checkedConvert('contactNo', (v) => val.contactNo = v as String?);
  $checkedConvert('email', (v) => val.email = v as String?);
  $checkedConvert('address', (v) => val.address = v as String?);
  $checkedConvert('placeId', (v) => val.placeId = v as String?);
  $checkedConvert('distance', (v) => val.distance = (v as num?)?.toDouble());
  $checkedConvert('instrLess', (v) => val.instrLess = v as bool?);
  $checkedConvert('groupClass', (v) => val.groupClass = v as bool?);
  $checkedConvert('fav', (v) => val.fav = v as bool?);
  $checkedConvert(
    'pictures',
    (v) =>
        val.pictures = (v as List<dynamic>?)?.map((e) => e as String).toList(),
  );
  $checkedConvert(
    'socialMedia',
    (v) => val.socialMedia = v == null
        ? null
        : SocialMediaJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert('avgRating', (v) => val.avgRating = (v as num?)?.toDouble());
  $checkedConvert(
    'totalRatingCount',
    (v) => val.totalRatingCount = (v as num?)?.toInt(),
  );
  $checkedConvert(
    'equipments',
    (v) => val.equipments = (v as List<dynamic>?)
        ?.map((e) => EquipmentJson.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
  return val;
});

Map<String, dynamic> _$WaitlistStudioJsonToJson(WaitlistStudioJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'descr': instance.descr,
      'contactNo': instance.contactNo,
      'email': instance.email,
      'address': instance.address,
      'placeId': instance.placeId,
      'distance': instance.distance,
      'instrLess': instance.instrLess,
      'groupClass': instance.groupClass,
      'fav': instance.fav,
      'pictures': instance.pictures,
      'socialMedia': instance.socialMedia?.toJson(),
      'avgRating': instance.avgRating,
      'totalRatingCount': instance.totalRatingCount,
      'equipments': instance.equipments?.map((e) => e.toJson()).toList(),
    };

WaitlistBookingFeesJson _$WaitlistBookingFeesJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('WaitlistBookingFeesJson', json, ($checkedConvert) {
  final val = WaitlistBookingFeesJson();
  $checkedConvert(
    'items',
    (v) => val.items = (v as List<dynamic>?)
        ?.map(
          (e) =>
              WaitlistBookingFeesItemJson.fromJson(e as Map<String, dynamic>),
        )
        .toList(),
  );
  $checkedConvert('total', (v) => val.total = v as String?);
  $checkedConvert('totalCredits', (v) => val.totalCredits = v as String?);
  $checkedConvert('currency', (v) => val.currency = v as String?);
  return val;
});

Map<String, dynamic> _$WaitlistBookingFeesJsonToJson(
  WaitlistBookingFeesJson instance,
) => <String, dynamic>{
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'totalCredits': instance.totalCredits,
  'currency': instance.currency,
};

WaitlistBookingFeesItemJson _$WaitlistBookingFeesItemJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('WaitlistBookingFeesItemJson', json, ($checkedConvert) {
  final val = WaitlistBookingFeesItemJson();
  $checkedConvert('name', (v) => val.name = v as String?);
  $checkedConvert('type', (v) => val.type = (v as num?)?.toInt());
  $checkedConvert('price', (v) => val.price = v as String?);
  $checkedConvert('credit', (v) => val.credit = v as String?);
  $checkedConvert('currency', (v) => val.currency = v as String?);
  return val;
});

Map<String, dynamic> _$WaitlistBookingFeesItemJsonToJson(
  WaitlistBookingFeesItemJson instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'price': instance.price,
  'credit': instance.credit,
  'currency': instance.currency,
};
