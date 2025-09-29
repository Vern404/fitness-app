import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_group_class_entity.freezed.dart';

part 'booking_group_class_entity.g.dart';

@freezed
@JsonSerializable()
class SearchBookingGroupClassEntity with _$SearchBookingGroupClassEntity {
  const SearchBookingGroupClassEntity({
    this.slots,
    this.nextAvailableDate,
});
  @override
  final List<BookingGroupClassEntity>? slots;
  @override
  final String? nextAvailableDate;

  factory SearchBookingGroupClassEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchBookingGroupClassEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SearchBookingGroupClassEntityToJson(this);
}
/// =======================
/// Group Class Root
/// =======================
@freezed
@JsonSerializable()
class BookingGroupClassEntity with _$BookingGroupClassEntity {
  const BookingGroupClassEntity({
    this.instructor,
    this.studio,
    this.groupClass,
    this.slots,
    this.fees,
  });

  @override
  final BookingGroupClassInstructorEntity? instructor;

  @override
  final BookingGroupClassStudioEntity? studio;

  @override
  final BookingGroupClassDetailsEntity? groupClass;

  @override
  final List<BookingGroupClassSlotEntity>? slots;

  @override
  final BookingGroupClassFeesEntity? fees;

  factory BookingGroupClassEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassEntityToJson(this);
}

/// =======================
/// Instructor
/// =======================
@freezed
@JsonSerializable()
class BookingGroupClassInstructorEntity
    with _$BookingGroupClassInstructorEntity {
  const BookingGroupClassInstructorEntity({
    this.id,
    this.firebaseUid,
    this.code,
    this.name,
    this.descr,
    this.facebook,
    this.instagram,
    this.certifications,
    this.specialisations,
    this.pictures,
    this.registeredAt,
    this.onboarded,
    this.pendingApproval,
    this.isCompleted,
    this.notifiedComplete,
    this.createdBy,
    this.deleted,
    this.avgRating,
    this.totalBookings,
    this.totalRatingCount,
  });

  @override
  final String? id;

  @override
  final String? firebaseUid;

  @override
  final String? code;

  @override
  final String? name;

  @override
  final String? descr;

  @override
  final String? facebook;

  @override
  final String? instagram;

  @override
  final String? certifications;

  @override
  final String? specialisations;

  @override
  final List<String>? pictures;

  @override
  final String? registeredAt;

  @override
  final bool? onboarded;

  @override
  final bool? pendingApproval;

  @override
  final bool? isCompleted;

  @override
  final bool? notifiedComplete;

  @override
  final String? createdBy;

  @override
  final bool? deleted;

  @override
  final String? avgRating;

  @override
  final int? totalBookings;

  @override
  final int? totalRatingCount;

  factory BookingGroupClassInstructorEntity.fromJson(
    Map<String, dynamic> json,
  ) => _$BookingGroupClassInstructorEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BookingGroupClassInstructorEntityToJson(this);
}

/// =======================
/// Studio
/// =======================
@freezed
@JsonSerializable()
class BookingGroupClassStudioEntity with _$BookingGroupClassStudioEntity {
  const BookingGroupClassStudioEntity({
    this.id,
    this.name,
    this.currency,
    this.countryCode,
    this.timezone,
    this.descr,
    this.contactNo,
    this.email,
    this.address,
    this.placeId,
    this.geocode,
    this.distance,
    this.fav,
    this.pictures,
    this.socialMedia,
    this.avgRating,
    this.totalRatingCount,
    this.equipments,
  });

  @override
  final String? id;

  @override
  final String? name;

  @override
  final String? currency;

  @override
  final String? countryCode;

  @override
  final String? timezone;

  @override
  final String? descr;

  @override
  final String? contactNo;

  @override
  final String? email;

  @override
  final String? address;

  @override
  final String? placeId;

  @override
  final String? geocode;

  @override
  final num? distance;

  @override
  final bool? fav;

  @override
  final List<String>? pictures;

  @override
  final Map<String, dynamic>? socialMedia;

  @override
  final num? avgRating;

  @override
  final num? totalRatingCount;

  @override
  final List<String>? equipments;

  factory BookingGroupClassStudioEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassStudioEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassStudioEntityToJson(this);
}

/// =======================
/// Class Details
/// =======================
@freezed
@JsonSerializable()
class BookingGroupClassDetailsEntity with _$BookingGroupClassDetailsEntity {
  const BookingGroupClassDetailsEntity({
    this.gpClassLinkId,
    this.name,
    this.intensity,
    this.autoCancel,
    this.description,
    this.preparation,
    this.minParticipants,
    this.maxParticipants,
    this.studioPrice,
    this.active,
    this.studioPriceInCredits,
  });

  @override
  final String? gpClassLinkId;

  @override
  final String? name;

  @override
  final String? intensity;

  @override
  final bool? autoCancel;

  @override
  final String? description;

  @override
  final String? preparation;

  @override
  final int? minParticipants;

  @override
  final int? maxParticipants;

  @override
  final String? studioPrice;

  @override
  final bool? active;

  @override
  final String? studioPriceInCredits;

  factory BookingGroupClassDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassDetailsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassDetailsEntityToJson(this);
}

/// =======================
/// Slot
/// =======================
@freezed
@JsonSerializable()
class BookingGroupClassSlotEntity with _$BookingGroupClassSlotEntity {
  const BookingGroupClassSlotEntity({
    this.groupClassId,
    this.date,
    this.startTime,
    this.endTime,
    this.totalBookings,
    this.totalBooked,
  });

  @override
  final String? groupClassId;
  @override
  final String? date;
  @override
  final String? startTime;

  @override
  final String? endTime;

  @override
  final int? totalBookings;

  @override
  final int? totalBooked;

  factory BookingGroupClassSlotEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassSlotEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassSlotEntityToJson(this);
}

/// =======================
/// Fees
/// =======================
@freezed
@JsonSerializable()
class BookingGroupClassFeesEntity with _$BookingGroupClassFeesEntity {
  const BookingGroupClassFeesEntity({
    this.items,
    this.total,
    this.totalCredits,
    this.currency,
  });

  @override
  final List<BookingGroupClassFeeItemEntity>? items;

  @override
  final String? total;

  @override
  final String? totalCredits;

  @override
  final String? currency;

  factory BookingGroupClassFeesEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassFeesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassFeesEntityToJson(this);
}

/// =======================
/// Fee Item
/// =======================
@freezed
@JsonSerializable()
class BookingGroupClassFeeItemEntity with _$BookingGroupClassFeeItemEntity {
  const BookingGroupClassFeeItemEntity({
    this.name,
    this.type,
    this.price,
    this.credit,
    this.currency,
    this.sign,
  });

  @override
  final String? name;

  @override
  final int? type;

  @override
  final String? price;

  @override
  final String? credit;

  @override
  final String? currency;

  @override
  final String? sign;

  factory BookingGroupClassFeeItemEntity.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassFeeItemEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassFeeItemEntityToJson(this);
}
