import 'package:ifit/data/models/ad_hoc/member_ad_hoc_invite_json.dart';
import 'package:json_annotation/json_annotation.dart';

part 'group_booking_json.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class BookingGroupClassJson {
  String? id;
  String? gpClassLinkId;
  String? name;
  String? startAt;
  String? endAt;
  num? minMemberCt;
  num? maxMemberCt;
  bool? slotsConflict;
  String? currency;
  String? instructorPrice;
  String? remark;
  String? instructorId;
  BookingGroupClassMemberJson? instructor;
  num? totalSlots;
  num? totalBooked;
  List<Events>? events;
  String? intensity;

  BookingGroupClassJson({
    this.id,
    this.gpClassLinkId,
    this.name,
    this.startAt,
    this.endAt,
    this.minMemberCt,
    this.maxMemberCt,
    this.slotsConflict,
    this.currency,
    this.instructorPrice,
    this.remark,
    this.events,
    this.instructorId,
    this.instructor,
    this.totalBooked,
    this.totalSlots,
    this.intensity,
  });

  factory BookingGroupClassJson.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class BookingGroupClassMemberJson {
  String? fullName;

  BookingGroupClassMemberJson({this.fullName});

  factory BookingGroupClassMemberJson.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassMemberJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassMemberJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class Events {
  String? id;
  String? studioId;
  String? type;
  String? classType;
  String? bookingType;
  String? groupClassStatus;
  String? bookingRefNo;
  String? bookingStatus;
  List<GroupBookingFeesItems>? bookingFeesItems;
  String? bookingFeesTotal;
  String? bookingFeestotalCredits;
  String? startDate;
  String? startTime;
  String? endDate;
  String? endTime;
  String? equipmentId;
  EquipmentJson? equipment;
  String? instructorId;
  String? memberId;
  Member? member;
  String? status;
  String? checkInAt;

  Events({
    this.id,
    this.studioId,
    this.type,
    this.classType,
    this.bookingType,
    this.groupClassStatus,
    this.bookingRefNo,
    this.bookingStatus,
    this.bookingFeesItems,
    this.bookingFeesTotal,
    this.bookingFeestotalCredits,
    this.startDate,
    this.startTime,
    this.endDate,
    this.endTime,
    this.equipmentId,
    this.equipment,
    this.instructorId,
    this.memberId,
    this.member,
    this.status,
    this.checkInAt,
  });

  factory Events.fromJson(Map<String, dynamic> json) => _$EventsFromJson(json);

  Map<String, dynamic> toJson() => _$EventsToJson(this);
}

@JsonSerializable()
class GroupBookingFeesItems {
  String? name;
  String? price;
  String? credit;
  String? currency;
  String? sign;

  GroupBookingFeesItems({
    this.name,
    this.price,
    this.credit,
    this.currency,
    this.sign,
  });

  factory GroupBookingFeesItems.fromJson(Map<String, dynamic> json) =>
      _$GroupBookingFeesItemsFromJson(json);

  Map<String, dynamic> toJson() => _$GroupBookingFeesItemsToJson(this);
}

@JsonSerializable()
class Member {
  String? fullName;

  Member({this.fullName});

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

  Map<String, dynamic> toJson() => _$MemberToJson(this);
}
