import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ifit/domain/entities/booking/group_booking_entity.dart';
import 'package:ifit/domain/entities/instructor.dart';

part 'waitlist_details_entity.freezed.dart';

part 'waitlist_details_entity.g.dart';

/// =======================
/// WaitlistBookingListEntity
/// =======================
@freezed
@JsonSerializable()
class WaitlistBookingListEntity with _$WaitlistBookingListEntity {
  const WaitlistBookingListEntity({
    this.items,
    this.totalItems,
    this.totalPages,
    this.currentPage,
    this.pageSize,
  });

  @override
  final List<WaitlistBookingEntity>? items;
  @override
  final num? totalItems;
  @override
  final num? totalPages;
  @override
  final num? currentPage;
  @override
  final num? pageSize;

  factory WaitlistBookingListEntity.fromJson(Map<String, dynamic> json) =>
      _$WaitlistBookingListEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WaitlistBookingListEntityToJson(this);
}

/// =======================
/// WaitlistBookingEntity
/// =======================
@freezed
@JsonSerializable()
class WaitlistBookingEntity with _$WaitlistBookingEntity {
  const WaitlistBookingEntity({
    this.id,
    this.groupClassLinkId,
    this.memberId,
    this.status,
    this.promoCode,
    this.promoAmount,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.groupClass,
    this.instructor,
    this.studio,
    this.groupClassSlot,
    this.bookingFees,
  });

  @override
  final String? id;
  @override
  final String? groupClassLinkId;
  @override
  final String? memberId;
  @override
  final String? status;
  @override
  final String? promoCode;
  @override
  final num? promoAmount;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? createdBy;
  @override
  final String? updatedBy;
  @override
  final GroupBookingEntity? groupClass;
  @override
  final Instructor? instructor;
  @override
  final WaitlistStudioEntity? studio;
  @override
  final GroupClassSlotEntity? groupClassSlot;
  @override
  final WaitlistBookingFeesEntity? bookingFees;

  factory WaitlistBookingEntity.fromJson(Map<String, dynamic> json) =>
      _$WaitlistBookingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WaitlistBookingEntityToJson(this);
}

/// =======================
/// GroupClassSlotEntity
/// =======================
@freezed
@JsonSerializable()
class GroupClassSlotEntity with _$GroupClassSlotEntity {
  const GroupClassSlotEntity({
    this.date,
    this.startTime,
    this.endTime,
    this.totalBookings,
    this.totalBooked,
  });

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

  factory GroupClassSlotEntity.fromJson(Map<String, dynamic> json) =>
      _$GroupClassSlotEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GroupClassSlotEntityToJson(this);
}

/// =======================
/// WaitlistStudioEntity
/// =======================
@freezed
@JsonSerializable()
class WaitlistStudioEntity with _$WaitlistStudioEntity {
  const WaitlistStudioEntity({
    this.id,
    this.name,
    this.descr,
    this.contactNo,
    this.email,
    this.address,
    this.placeId,
    this.distance,
    this.instrLess,
    this.groupClass,
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
  final double? distance;
  @override
  final bool? instrLess;
  @override
  final bool? groupClass;
  @override
  final bool? fav;
  @override
  final List<String>? pictures;
  @override
  final dynamic socialMedia; // map to proper entity if you have one
  @override
  final double? avgRating;
  @override
  final int? totalRatingCount;
  @override
  final dynamic equipments; // map to proper entity if you have one

  factory WaitlistStudioEntity.fromJson(Map<String, dynamic> json) =>
      _$WaitlistStudioEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WaitlistStudioEntityToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class WaitlistBookingFeesEntity {
  List<WaitlistBookingFeeItemEntity>? items;
  String? total;
  String? totalCredits;
  String? currency;

  WaitlistBookingFeesEntity({
    this.items,
    this.total,
    this.totalCredits,
    this.currency,
  });

  factory WaitlistBookingFeesEntity.fromJson(Map<String, dynamic> json) =>
      _$WaitlistBookingFeesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WaitlistBookingFeesEntityToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class WaitlistBookingFeeItemEntity {
  String? name;
  int? type;
  String? price;
  String? credit;
  String? currency;

  WaitlistBookingFeeItemEntity({
    this.name,
    this.type,
    this.price,
    this.credit,
    this.currency,
  });

  factory WaitlistBookingFeeItemEntity.fromJson(Map<String, dynamic> json) =>
      _$WaitlistBookingFeeItemEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WaitlistBookingFeeItemEntityToJson(this);
}
