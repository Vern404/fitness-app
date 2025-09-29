import 'package:ifit/feature/booking_group_class/data/model/booking_group_class_slot_json.dart';
import 'package:ifit/feature/booking_group_class/domain/entity/booking_group_class_entity.dart';

extension SearchBookingGroupClassSlotJsonMapper on SearchBookingGroupClassJson {
  SearchBookingGroupClassEntity toDomain() {
    return SearchBookingGroupClassEntity(
      slots: results?.map((slot) => slot.toDomain()).toList() ?? [],
      nextAvailableDate: nextAvailableDate,
    );
  }
}

extension BookingGroupClassSlotJsonMapper on BookingGroupClassSlotJson {
  BookingGroupClassEntity toDomain() {
    return BookingGroupClassEntity(
      instructor: instructor?.toDomain(),
      studio: studio?.toDomain(),
      groupClass: groupClass?.toDomain(),
      slots: slots?.map((s) => s.toDomain()).toList(),
      fees: fees?.toDomain(),
    );
  }
}

extension BookingGroupClassInstructorJsonMapper
    on BookingGroupClassInstructorJson {
  BookingGroupClassInstructorEntity toDomain() {
    return BookingGroupClassInstructorEntity(
      id: id,
      firebaseUid: firebaseUid,
      code: code,
      name: name,
      descr: descr,
      facebook: facebook,
      instagram: instagram,
      certifications: certifications,
      specialisations: specialisations,
      pictures: pictures,
      registeredAt: registeredAt,
      onboarded: onboarded,
      pendingApproval: pendingApproval,
      isCompleted: isCompleted,
      notifiedComplete: notifiedComplete,
      createdBy: createdBy,
      deleted: deleted,
      avgRating: avgRating,
      totalBookings: totalBookings?.toInt(),
      totalRatingCount: totalRatingCount?.toInt(),
    );
  }
}

extension BookingGroupClassStudioJsonMapper on BookingGroupClassStudioJson {
  BookingGroupClassStudioEntity toDomain() {
    return BookingGroupClassStudioEntity(
      id: id,
      name: name,
      currency: currency,
      countryCode: countryCode,
      timezone: timezone,
      descr: descr,
      contactNo: contactNo,
      email: email,
      address: address,
      placeId: placeId,
      geocode: geocode,
      distance: distance,
      fav: fav,
      pictures: pictures,
      socialMedia: socialMedia,
      avgRating: avgRating,
      totalRatingCount: totalRatingCount,
      equipments: equipments,
    );
  }
}

extension BookingGroupClassJsonMapper on BookingGroupClassJson {
  BookingGroupClassDetailsEntity toDomain() {
    return BookingGroupClassDetailsEntity(
      gpClassLinkId: gpClassLinkId,
      name: name,
      intensity: intensity,
      autoCancel: autoCancel,
      description: description,
      preparation: preparation,
      minParticipants: minParticipants?.toInt(),
      maxParticipants: maxParticipants?.toInt(),
      studioPrice: studioPrice,
      active: active,
      studioPriceInCredits: studioPriceInCredits,
    );
  }
}

extension BookingGroupSlotJsonMapper on BookingGroupSlotJson {
  BookingGroupClassSlotEntity toDomain() {
    return BookingGroupClassSlotEntity(
      date: date,
      groupClassId: groupClassId,
      startTime: startTime,
      endTime: endTime,
      totalBookings: totalBookings?.toInt(),
      totalBooked: totalBooked?.toInt(),
    );
  }
}

extension BookingGroupClassFeeJsonMapper on BookingGroupClassFeeJson {
  BookingGroupClassFeesEntity toDomain() {
    return BookingGroupClassFeesEntity(
      total: total,
      totalCredits: totalCredits,
      currency: currency,
      items: items?.map((i) => i.toDomain()).toList(),
    );
  }
}

extension BookingGroupClassFeeItemJsonMapper on BookingGroupClassFeeItemJson {
  BookingGroupClassFeeItemEntity toDomain() {
    return BookingGroupClassFeeItemEntity(
      name: name,
      type: type?.toInt(),
      price: price,
      credit: credit,
      currency: currency,
      sign: sign,
    );
  }
}
