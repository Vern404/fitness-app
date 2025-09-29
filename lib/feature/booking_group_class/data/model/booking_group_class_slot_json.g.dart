// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_group_class_slot_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchBookingGroupClassJson _$SearchBookingGroupClassJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SearchBookingGroupClassJson', json, ($checkedConvert) {
  final val = SearchBookingGroupClassJson(
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                BookingGroupClassSlotJson.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    nextAvailableDate: $checkedConvert(
      'nextAvailableDate',
      (v) => v as String?,
    ),
  );
  return val;
});

Map<String, dynamic> _$SearchBookingGroupClassJsonToJson(
  SearchBookingGroupClassJson instance,
) => <String, dynamic>{
  'results': instance.results?.map((e) => e.toJson()).toList(),
  'nextAvailableDate': instance.nextAvailableDate,
};

BookingGroupClassSlotJson _$BookingGroupClassSlotJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BookingGroupClassSlotJson', json, ($checkedConvert) {
  final val = BookingGroupClassSlotJson(
    instructor: $checkedConvert(
      'instructor',
      (v) => v == null
          ? null
          : BookingGroupClassInstructorJson.fromJson(v as Map<String, dynamic>),
    ),
    studio: $checkedConvert(
      'studio',
      (v) => v == null
          ? null
          : BookingGroupClassStudioJson.fromJson(v as Map<String, dynamic>),
    ),
    groupClass: $checkedConvert(
      'groupClass',
      (v) => v == null
          ? null
          : BookingGroupClassJson.fromJson(v as Map<String, dynamic>),
    ),
    slots: $checkedConvert(
      'slots',
      (v) => (v as List<dynamic>?)
          ?.map((e) => BookingGroupSlotJson.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    fees: $checkedConvert(
      'fees',
      (v) => v == null
          ? null
          : BookingGroupClassFeeJson.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$BookingGroupClassSlotJsonToJson(
  BookingGroupClassSlotJson instance,
) => <String, dynamic>{
  'instructor': instance.instructor?.toJson(),
  'studio': instance.studio?.toJson(),
  'groupClass': instance.groupClass?.toJson(),
  'slots': instance.slots?.map((e) => e.toJson()).toList(),
  'fees': instance.fees?.toJson(),
};

BookingGroupClassInstructorJson _$BookingGroupClassInstructorJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BookingGroupClassInstructorJson', json, ($checkedConvert) {
  final val = BookingGroupClassInstructorJson();
  $checkedConvert('id', (v) => val.id = v as String?);
  $checkedConvert('firebaseUid', (v) => val.firebaseUid = v as String?);
  $checkedConvert('code', (v) => val.code = v as String?);
  $checkedConvert('name', (v) => val.name = v as String?);
  $checkedConvert('descr', (v) => val.descr = v as String?);
  $checkedConvert('facebook', (v) => val.facebook = v as String?);
  $checkedConvert('instagram', (v) => val.instagram = v as String?);
  $checkedConvert('certifications', (v) => val.certifications = v as String?);
  $checkedConvert('specialisations', (v) => val.specialisations = v as String?);
  $checkedConvert(
    'pictures',
    (v) =>
        val.pictures = (v as List<dynamic>?)?.map((e) => e as String).toList(),
  );
  $checkedConvert('registeredAt', (v) => val.registeredAt = v as String?);
  $checkedConvert('onboarded', (v) => val.onboarded = v as bool?);
  $checkedConvert('pendingApproval', (v) => val.pendingApproval = v as bool?);
  $checkedConvert('isCompleted', (v) => val.isCompleted = v as bool?);
  $checkedConvert('notifiedComplete', (v) => val.notifiedComplete = v as bool?);
  $checkedConvert('createdBy', (v) => val.createdBy = v as String?);
  $checkedConvert('deleted', (v) => val.deleted = v as bool?);
  $checkedConvert('avgRating', (v) => val.avgRating = v as String?);
  $checkedConvert('totalRatingCount', (v) => val.totalRatingCount = v as num?);
  $checkedConvert('totalBookings', (v) => val.totalBookings = v as num?);
  return val;
});

Map<String, dynamic> _$BookingGroupClassInstructorJsonToJson(
  BookingGroupClassInstructorJson instance,
) => <String, dynamic>{
  'id': instance.id,
  'firebaseUid': instance.firebaseUid,
  'code': instance.code,
  'name': instance.name,
  'descr': instance.descr,
  'facebook': instance.facebook,
  'instagram': instance.instagram,
  'certifications': instance.certifications,
  'specialisations': instance.specialisations,
  'pictures': instance.pictures,
  'registeredAt': instance.registeredAt,
  'onboarded': instance.onboarded,
  'pendingApproval': instance.pendingApproval,
  'isCompleted': instance.isCompleted,
  'notifiedComplete': instance.notifiedComplete,
  'createdBy': instance.createdBy,
  'deleted': instance.deleted,
  'avgRating': instance.avgRating,
  'totalRatingCount': instance.totalRatingCount,
  'totalBookings': instance.totalBookings,
};

BookingGroupClassStudioJson _$BookingGroupClassStudioJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BookingGroupClassStudioJson', json, ($checkedConvert) {
  final val = BookingGroupClassStudioJson();
  $checkedConvert('id', (v) => val.id = v as String?);
  $checkedConvert('name', (v) => val.name = v as String?);
  $checkedConvert('currency', (v) => val.currency = v as String?);
  $checkedConvert('countryCode', (v) => val.countryCode = v as String?);
  $checkedConvert('timezone', (v) => val.timezone = v as String?);
  $checkedConvert('descr', (v) => val.descr = v as String?);
  $checkedConvert('contactNo', (v) => val.contactNo = v as String?);
  $checkedConvert('email', (v) => val.email = v as String?);
  $checkedConvert('address', (v) => val.address = v as String?);
  $checkedConvert('placeId', (v) => val.placeId = v as String?);
  $checkedConvert('geocode', (v) => val.geocode = v as String?);
  $checkedConvert('distance', (v) => val.distance = v as num?);
  $checkedConvert('fav', (v) => val.fav = v as bool?);
  $checkedConvert(
    'pictures',
    (v) =>
        val.pictures = (v as List<dynamic>?)?.map((e) => e as String).toList(),
  );
  $checkedConvert(
    'socialMedia',
    (v) => val.socialMedia = v as Map<String, dynamic>?,
  );
  $checkedConvert('avgRating', (v) => val.avgRating = v as num?);
  $checkedConvert('totalRatingCount', (v) => val.totalRatingCount = v as num?);
  $checkedConvert(
    'equipments',
    (v) => val.equipments = (v as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
  return val;
});

Map<String, dynamic> _$BookingGroupClassStudioJsonToJson(
  BookingGroupClassStudioJson instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'currency': instance.currency,
  'countryCode': instance.countryCode,
  'timezone': instance.timezone,
  'descr': instance.descr,
  'contactNo': instance.contactNo,
  'email': instance.email,
  'address': instance.address,
  'placeId': instance.placeId,
  'geocode': instance.geocode,
  'distance': instance.distance,
  'fav': instance.fav,
  'pictures': instance.pictures,
  'socialMedia': instance.socialMedia,
  'avgRating': instance.avgRating,
  'totalRatingCount': instance.totalRatingCount,
  'equipments': instance.equipments,
};

BookingGroupClassJson _$BookingGroupClassJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BookingGroupClassJson', json, ($checkedConvert) {
  final val = BookingGroupClassJson();
  $checkedConvert('gpClassLinkId', (v) => val.gpClassLinkId = v as String?);
  $checkedConvert('name', (v) => val.name = v as String?);
  $checkedConvert('intensity', (v) => val.intensity = v as String?);
  $checkedConvert('autoCancel', (v) => val.autoCancel = v as bool?);
  $checkedConvert('description', (v) => val.description = v as String?);
  $checkedConvert('preparation', (v) => val.preparation = v as String?);
  $checkedConvert('minParticipants', (v) => val.minParticipants = v as num?);
  $checkedConvert('maxParticipants', (v) => val.maxParticipants = v as num?);
  $checkedConvert('studioPrice', (v) => val.studioPrice = v as String?);
  $checkedConvert('active', (v) => val.active = v as bool?);
  $checkedConvert(
    'studioPriceInCredits',
    (v) => val.studioPriceInCredits = v as String?,
  );
  return val;
});

Map<String, dynamic> _$BookingGroupClassJsonToJson(
  BookingGroupClassJson instance,
) => <String, dynamic>{
  'gpClassLinkId': instance.gpClassLinkId,
  'name': instance.name,
  'intensity': instance.intensity,
  'autoCancel': instance.autoCancel,
  'description': instance.description,
  'preparation': instance.preparation,
  'minParticipants': instance.minParticipants,
  'maxParticipants': instance.maxParticipants,
  'studioPrice': instance.studioPrice,
  'active': instance.active,
  'studioPriceInCredits': instance.studioPriceInCredits,
};

BookingGroupSlotJson _$BookingGroupSlotJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BookingGroupSlotJson', json, ($checkedConvert) {
  final val = BookingGroupSlotJson();
  $checkedConvert('groupClassId', (v) => val.groupClassId = v as String?);
  $checkedConvert('startTime', (v) => val.startTime = v as String?);
  $checkedConvert('date', (v) => val.date = v as String?);
  $checkedConvert('endTime', (v) => val.endTime = v as String?);
  $checkedConvert('totalBookings', (v) => val.totalBookings = v as num?);
  $checkedConvert('totalBooked', (v) => val.totalBooked = v as num?);
  return val;
});

Map<String, dynamic> _$BookingGroupSlotJsonToJson(
  BookingGroupSlotJson instance,
) => <String, dynamic>{
  'groupClassId': instance.groupClassId,
  'startTime': instance.startTime,
  'date': instance.date,
  'endTime': instance.endTime,
  'totalBookings': instance.totalBookings,
  'totalBooked': instance.totalBooked,
};

BookingGroupClassFeeJson _$BookingGroupClassFeeJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BookingGroupClassFeeJson', json, ($checkedConvert) {
  final val = BookingGroupClassFeeJson();
  $checkedConvert(
    'items',
    (v) => val.items = (v as List<dynamic>?)
        ?.map(
          (e) =>
              BookingGroupClassFeeItemJson.fromJson(e as Map<String, dynamic>),
        )
        .toList(),
  );
  $checkedConvert('total', (v) => val.total = v as String?);
  $checkedConvert('totalCredits', (v) => val.totalCredits = v as String?);
  $checkedConvert('currency', (v) => val.currency = v as String?);
  return val;
});

Map<String, dynamic> _$BookingGroupClassFeeJsonToJson(
  BookingGroupClassFeeJson instance,
) => <String, dynamic>{
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'totalCredits': instance.totalCredits,
  'currency': instance.currency,
};

BookingGroupClassFeeItemJson _$BookingGroupClassFeeItemJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BookingGroupClassFeeItemJson', json, ($checkedConvert) {
  final val = BookingGroupClassFeeItemJson();
  $checkedConvert('name', (v) => val.name = v as String?);
  $checkedConvert('type', (v) => val.type = v as num?);
  $checkedConvert('price', (v) => val.price = v as String?);
  $checkedConvert('credit', (v) => val.credit = v as String?);
  $checkedConvert('currency', (v) => val.currency = v as String?);
  $checkedConvert('sign', (v) => val.sign = v as String?);
  return val;
});

Map<String, dynamic> _$BookingGroupClassFeeItemJsonToJson(
  BookingGroupClassFeeItemJson instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'price': instance.price,
  'credit': instance.credit,
  'currency': instance.currency,
  'sign': instance.sign,
};
