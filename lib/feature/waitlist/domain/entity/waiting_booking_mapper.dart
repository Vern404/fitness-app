import 'package:ifit/data/models/booking/group_booking_mapper.dart';
import 'package:ifit/feature/waitlist/data/model/waitlist_booking_json.dart';
import 'package:ifit/feature/waitlist/domain/entity/waitlist_details_entity.dart';

/// =======================
/// WaitlistBookingJson → WaitlistBookingEntity
/// =======================
extension WaitlistBookingMapper on WaitlistBookingJson {
  WaitlistBookingEntity toEntity() {
    return WaitlistBookingEntity(
      id: id,
      groupClassLinkId: groupClassLinkId,
      memberId: memberId,
      status: status,
      promoCode: promoCode,
      promoAmount: promoAmount,
      createdAt: createdAt,
      updatedAt: updatedAt,
      createdBy: createdBy,
      updatedBy: updatedBy,
      groupClass: groupClass?.toEntity(),
      instructor: instructor?.toDomain(),
      studio: studio?.toEntity(),
      groupClassSlot: groupClassSlot?.toEntity(),
      bookingFees: bookingFees?.toEntity(),
    );
  }
}

/// =======================
/// GroupClassSlotJson → GroupClassSlotEntity
/// =======================
extension GroupClassSlotMapper on GroupClassSlotJson {
  GroupClassSlotEntity toEntity() {
    return GroupClassSlotEntity(
      date: date,
      startTime: startTime,
      endTime: endTime,
      totalBookings: totalBookings,
      totalBooked: totalBooked,
    );
  }
}

/// =======================
/// WaitlistStudioJson → WaitlistStudioEntity
/// =======================
extension WaitlistStudioMapper on WaitlistStudioJson {
  WaitlistStudioEntity toEntity() {
    return WaitlistStudioEntity(
      id: id,
      name: name,
      descr: descr,
      contactNo: contactNo,
      email: email,
      address: address,
      placeId: placeId,
      distance: distance,
      instrLess: instrLess,
      groupClass: groupClass,
      fav: fav,
      pictures: pictures,
      socialMedia: socialMedia?.toDomain(),
      avgRating: avgRating,
      totalRatingCount: totalRatingCount,
      equipments: equipments?.map((e) => e.toDomain()).toList(),
    );
  }
}

extension BookingFeesMapper on WaitlistBookingFeesJson {
  WaitlistBookingFeesEntity toEntity() {
    return WaitlistBookingFeesEntity(
      items: items?.map((e) => e.toEntity()).toList(),
      total: total,
      totalCredits: totalCredits,
      currency: currency,
    );
  }
}

extension BookingFeeItemMapper on WaitlistBookingFeesItemJson {
  WaitlistBookingFeeItemEntity toEntity() {
    return WaitlistBookingFeeItemEntity(
      name: name,
      type: type,
      price: price,
      credit: credit,
      currency: currency,
    );
  }
}
