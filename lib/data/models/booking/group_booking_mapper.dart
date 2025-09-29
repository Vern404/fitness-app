// Extension or helper methods for mapping
import 'package:ifit/core/extensions/date_time_extension.dart';
import 'package:ifit/data/models/ad_hoc/member_ad_hoc_invite_json.dart';
import 'package:ifit/domain/entities/ad_hoc/member_ad_hoc_invite_entity.dart';
import 'package:ifit/domain/entities/booking/group_booking_entity.dart';

import 'group_booking_json.dart';

// Extension or helper methods for mapping
extension GroupClassJsonMapper on BookingGroupClassJson {
  GroupBookingEntity toEntity() {
    return GroupBookingEntity(
      id: id ?? '',
      name: name ?? '',
      minMemberCt: minMemberCt ?? 0,
      maxMemberCt: maxMemberCt ?? 0,
      currency: currency ?? '',
      instructorPrice: instructorPrice ?? '',
      remark: remark ?? '',
      events: events?.map((event) => event.toEntity()).toList() ?? [],
      slotsConflict: slotsConflict ?? false,
      startAt: startAt ?? '',
      endAt: endAt ?? '',
      gpClassLinkId: gpClassLinkId ?? '',
      instructorName: instructor?.fullName ?? '',
      totalBooked: (totalBooked ?? 0).toInt(),
      totalSlots: (totalSlots ?? 0).toInt(),
      intensity: intensity ?? '',
    );
  }
}

extension EventsMapper on Events {
  GroupBookingEventEntity toEntity() {
    return GroupBookingEventEntity(
      id: id ?? '',
      studioId: studioId ?? '',
      type: type ?? '',
      classType: classType ?? '',
      bookingType: bookingType ?? '',
      groupClassStatus: groupClassStatus ?? '',
      bookingRefNo: bookingRefNo ?? '',
      bookingStatus: bookingStatus ?? '',
      bookingFeesItems:
          bookingFeesItems?.map((item) => item.toEntity()).toList() ?? [],
      bookingFeesTotal: bookingFeesTotal ?? '',
      bookingFeestotalCredits: bookingFeestotalCredits ?? '',
      startDate: startDate ?? '',
      startTime: startTime ?? '',
      endDate: endDate ?? '',
      endTime: endTime ?? '',
      equipmentId: equipmentId ?? '',
      equipment: equipment?.toEquipmentMemberEntity(),
      instructorId: instructorId ?? '',
      memberId: memberId ?? '',
      member: member?.toEntity(),
      status: status ?? '',
      checkInAt: checkInAt?.to12HourTime(),
    );
  }
}

extension GroupBookingFeesItemsMapper on GroupBookingFeesItems {
  GroupBookingFeeItemEntity toEntity() {
    return GroupBookingFeeItemEntity(
      name: name ?? '',
      price: price ?? '',
      credit: credit ?? '',
      currency: currency ?? '',
      sign: sign ?? '',
    );
  }
}

extension MemberMapper on Member {
  GroupBookingMemberEntity toEntity() {
    return GroupBookingMemberEntity(fullName: fullName ?? '');
  }
}

extension EquipmentMapper on EquipmentJson {
  EquipmentMemberEntity toEquipmentMemberEntity() {
    return EquipmentMemberEntity(id: code, name: name, privacy: privacy);
  }
}
