// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waitlist_details_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WaitlistBookingListEntity _$WaitlistBookingListEntityFromJson(
  Map<String, dynamic> json,
) => WaitlistBookingListEntity(
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => WaitlistBookingEntity.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalItems: json['totalItems'] as num?,
  totalPages: json['totalPages'] as num?,
  currentPage: json['currentPage'] as num?,
  pageSize: json['pageSize'] as num?,
);

Map<String, dynamic> _$WaitlistBookingListEntityToJson(
  WaitlistBookingListEntity instance,
) => <String, dynamic>{
  'items': instance.items,
  'totalItems': instance.totalItems,
  'totalPages': instance.totalPages,
  'currentPage': instance.currentPage,
  'pageSize': instance.pageSize,
};

WaitlistBookingEntity _$WaitlistBookingEntityFromJson(
  Map<String, dynamic> json,
) => WaitlistBookingEntity(
  id: json['id'] as String?,
  groupClassLinkId: json['groupClassLinkId'] as String?,
  memberId: json['memberId'] as String?,
  status: json['status'] as String?,
  promoCode: json['promoCode'] as String?,
  promoAmount: json['promoAmount'] as num?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  createdBy: json['createdBy'] as String?,
  updatedBy: json['updatedBy'] as String?,
  groupClass: json['groupClass'] == null
      ? null
      : GroupBookingEntity.fromJson(json['groupClass'] as Map<String, dynamic>),
  instructor: json['instructor'] == null
      ? null
      : Instructor.fromJson(json['instructor'] as Map<String, dynamic>),
  studio: json['studio'] == null
      ? null
      : WaitlistStudioEntity.fromJson(json['studio'] as Map<String, dynamic>),
  groupClassSlot: json['groupClassSlot'] == null
      ? null
      : GroupClassSlotEntity.fromJson(
          json['groupClassSlot'] as Map<String, dynamic>,
        ),
  bookingFees: json['bookingFees'] == null
      ? null
      : WaitlistBookingFeesEntity.fromJson(
          json['bookingFees'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$WaitlistBookingEntityToJson(
  WaitlistBookingEntity instance,
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
  'groupClass': instance.groupClass,
  'instructor': instance.instructor,
  'studio': instance.studio,
  'groupClassSlot': instance.groupClassSlot,
  'bookingFees': instance.bookingFees,
};

GroupClassSlotEntity _$GroupClassSlotEntityFromJson(
  Map<String, dynamic> json,
) => GroupClassSlotEntity(
  date: json['date'] as String?,
  startTime: json['startTime'] as String?,
  endTime: json['endTime'] as String?,
  totalBookings: (json['totalBookings'] as num?)?.toInt(),
  totalBooked: (json['totalBooked'] as num?)?.toInt(),
);

Map<String, dynamic> _$GroupClassSlotEntityToJson(
  GroupClassSlotEntity instance,
) => <String, dynamic>{
  'date': instance.date,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'totalBookings': instance.totalBookings,
  'totalBooked': instance.totalBooked,
};

WaitlistStudioEntity _$WaitlistStudioEntityFromJson(
  Map<String, dynamic> json,
) => WaitlistStudioEntity(
  id: json['id'] as String?,
  name: json['name'] as String?,
  descr: json['descr'] as String?,
  contactNo: json['contactNo'] as String?,
  email: json['email'] as String?,
  address: json['address'] as String?,
  placeId: json['placeId'] as String?,
  distance: (json['distance'] as num?)?.toDouble(),
  instrLess: json['instrLess'] as bool?,
  groupClass: json['groupClass'] as bool?,
  fav: json['fav'] as bool?,
  pictures: (json['pictures'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  socialMedia: json['socialMedia'],
  avgRating: (json['avgRating'] as num?)?.toDouble(),
  totalRatingCount: (json['totalRatingCount'] as num?)?.toInt(),
  equipments: json['equipments'],
);

Map<String, dynamic> _$WaitlistStudioEntityToJson(
  WaitlistStudioEntity instance,
) => <String, dynamic>{
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
  'socialMedia': instance.socialMedia,
  'avgRating': instance.avgRating,
  'totalRatingCount': instance.totalRatingCount,
  'equipments': instance.equipments,
};

WaitlistBookingFeesEntity _$WaitlistBookingFeesEntityFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('WaitlistBookingFeesEntity', json, ($checkedConvert) {
  final val = WaitlistBookingFeesEntity(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => WaitlistBookingFeeItemEntity.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    total: $checkedConvert('total', (v) => v as String?),
    totalCredits: $checkedConvert('totalCredits', (v) => v as String?),
    currency: $checkedConvert('currency', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$WaitlistBookingFeesEntityToJson(
  WaitlistBookingFeesEntity instance,
) => <String, dynamic>{
  'items': instance.items?.map((e) => e.toJson()).toList(),
  'total': instance.total,
  'totalCredits': instance.totalCredits,
  'currency': instance.currency,
};

WaitlistBookingFeeItemEntity _$WaitlistBookingFeeItemEntityFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('WaitlistBookingFeeItemEntity', json, ($checkedConvert) {
  final val = WaitlistBookingFeeItemEntity(
    name: $checkedConvert('name', (v) => v as String?),
    type: $checkedConvert('type', (v) => (v as num?)?.toInt()),
    price: $checkedConvert('price', (v) => v as String?),
    credit: $checkedConvert('credit', (v) => v as String?),
    currency: $checkedConvert('currency', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$WaitlistBookingFeeItemEntityToJson(
  WaitlistBookingFeeItemEntity instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'price': instance.price,
  'credit': instance.credit,
  'currency': instance.currency,
};
