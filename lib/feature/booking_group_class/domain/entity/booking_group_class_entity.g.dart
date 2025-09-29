// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_group_class_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchBookingGroupClassEntity _$SearchBookingGroupClassEntityFromJson(
  Map<String, dynamic> json,
) => SearchBookingGroupClassEntity(
  slots: (json['slots'] as List<dynamic>?)
      ?.map((e) => BookingGroupClassEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  nextAvailableDate: json['nextAvailableDate'] as String?,
);

Map<String, dynamic> _$SearchBookingGroupClassEntityToJson(
  SearchBookingGroupClassEntity instance,
) => <String, dynamic>{
  'slots': instance.slots,
  'nextAvailableDate': instance.nextAvailableDate,
};

BookingGroupClassEntity _$BookingGroupClassEntityFromJson(
  Map<String, dynamic> json,
) => BookingGroupClassEntity(
  instructor: json['instructor'] == null
      ? null
      : BookingGroupClassInstructorEntity.fromJson(
          json['instructor'] as Map<String, dynamic>,
        ),
  studio: json['studio'] == null
      ? null
      : BookingGroupClassStudioEntity.fromJson(
          json['studio'] as Map<String, dynamic>,
        ),
  groupClass: json['groupClass'] == null
      ? null
      : BookingGroupClassDetailsEntity.fromJson(
          json['groupClass'] as Map<String, dynamic>,
        ),
  slots: (json['slots'] as List<dynamic>?)
      ?.map(
        (e) => BookingGroupClassSlotEntity.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  fees: json['fees'] == null
      ? null
      : BookingGroupClassFeesEntity.fromJson(
          json['fees'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BookingGroupClassEntityToJson(
  BookingGroupClassEntity instance,
) => <String, dynamic>{
  'instructor': instance.instructor,
  'studio': instance.studio,
  'groupClass': instance.groupClass,
  'slots': instance.slots,
  'fees': instance.fees,
};

BookingGroupClassInstructorEntity _$BookingGroupClassInstructorEntityFromJson(
  Map<String, dynamic> json,
) => BookingGroupClassInstructorEntity(
  id: json['id'] as String?,
  firebaseUid: json['firebaseUid'] as String?,
  code: json['code'] as String?,
  name: json['name'] as String?,
  descr: json['descr'] as String?,
  facebook: json['facebook'] as String?,
  instagram: json['instagram'] as String?,
  certifications: json['certifications'] as String?,
  specialisations: json['specialisations'] as String?,
  pictures: (json['pictures'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  registeredAt: json['registeredAt'] as String?,
  onboarded: json['onboarded'] as bool?,
  pendingApproval: json['pendingApproval'] as bool?,
  isCompleted: json['isCompleted'] as bool?,
  notifiedComplete: json['notifiedComplete'] as bool?,
  createdBy: json['createdBy'] as String?,
  deleted: json['deleted'] as bool?,
  avgRating: json['avgRating'] as String?,
  totalBookings: (json['totalBookings'] as num?)?.toInt(),
  totalRatingCount: (json['totalRatingCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$BookingGroupClassInstructorEntityToJson(
  BookingGroupClassInstructorEntity instance,
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
  'totalBookings': instance.totalBookings,
  'totalRatingCount': instance.totalRatingCount,
};

BookingGroupClassStudioEntity _$BookingGroupClassStudioEntityFromJson(
  Map<String, dynamic> json,
) => BookingGroupClassStudioEntity(
  id: json['id'] as String?,
  name: json['name'] as String?,
  currency: json['currency'] as String?,
  countryCode: json['countryCode'] as String?,
  timezone: json['timezone'] as String?,
  descr: json['descr'] as String?,
  contactNo: json['contactNo'] as String?,
  email: json['email'] as String?,
  address: json['address'] as String?,
  placeId: json['placeId'] as String?,
  geocode: json['geocode'] as String?,
  distance: json['distance'] as num?,
  fav: json['fav'] as bool?,
  pictures: (json['pictures'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  socialMedia: json['socialMedia'] as Map<String, dynamic>?,
  avgRating: json['avgRating'] as num?,
  totalRatingCount: json['totalRatingCount'] as num?,
  equipments: (json['equipments'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$BookingGroupClassStudioEntityToJson(
  BookingGroupClassStudioEntity instance,
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

BookingGroupClassDetailsEntity _$BookingGroupClassDetailsEntityFromJson(
  Map<String, dynamic> json,
) => BookingGroupClassDetailsEntity(
  gpClassLinkId: json['gpClassLinkId'] as String?,
  name: json['name'] as String?,
  intensity: json['intensity'] as String?,
  autoCancel: json['autoCancel'] as bool?,
  description: json['description'] as String?,
  preparation: json['preparation'] as String?,
  minParticipants: (json['minParticipants'] as num?)?.toInt(),
  maxParticipants: (json['maxParticipants'] as num?)?.toInt(),
  studioPrice: json['studioPrice'] as String?,
  active: json['active'] as bool?,
  studioPriceInCredits: json['studioPriceInCredits'] as String?,
);

Map<String, dynamic> _$BookingGroupClassDetailsEntityToJson(
  BookingGroupClassDetailsEntity instance,
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

BookingGroupClassSlotEntity _$BookingGroupClassSlotEntityFromJson(
  Map<String, dynamic> json,
) => BookingGroupClassSlotEntity(
  groupClassId: json['groupClassId'] as String?,
  date: json['date'] as String?,
  startTime: json['startTime'] as String?,
  endTime: json['endTime'] as String?,
  totalBookings: (json['totalBookings'] as num?)?.toInt(),
  totalBooked: (json['totalBooked'] as num?)?.toInt(),
);

Map<String, dynamic> _$BookingGroupClassSlotEntityToJson(
  BookingGroupClassSlotEntity instance,
) => <String, dynamic>{
  'groupClassId': instance.groupClassId,
  'date': instance.date,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'totalBookings': instance.totalBookings,
  'totalBooked': instance.totalBooked,
};

BookingGroupClassFeesEntity _$BookingGroupClassFeesEntityFromJson(
  Map<String, dynamic> json,
) => BookingGroupClassFeesEntity(
  items: (json['items'] as List<dynamic>?)
      ?.map(
        (e) =>
            BookingGroupClassFeeItemEntity.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  total: json['total'] as String?,
  totalCredits: json['totalCredits'] as String?,
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$BookingGroupClassFeesEntityToJson(
  BookingGroupClassFeesEntity instance,
) => <String, dynamic>{
  'items': instance.items,
  'total': instance.total,
  'totalCredits': instance.totalCredits,
  'currency': instance.currency,
};

BookingGroupClassFeeItemEntity _$BookingGroupClassFeeItemEntityFromJson(
  Map<String, dynamic> json,
) => BookingGroupClassFeeItemEntity(
  name: json['name'] as String?,
  type: (json['type'] as num?)?.toInt(),
  price: json['price'] as String?,
  credit: json['credit'] as String?,
  currency: json['currency'] as String?,
  sign: json['sign'] as String?,
);

Map<String, dynamic> _$BookingGroupClassFeeItemEntityToJson(
  BookingGroupClassFeeItemEntity instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'price': instance.price,
  'credit': instance.credit,
  'currency': instance.currency,
  'sign': instance.sign,
};
