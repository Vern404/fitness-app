import 'package:json_annotation/json_annotation.dart';
import 'package:ifit/data/models/booking/group_booking_json.dart';
import 'package:ifit/data/models/instructor_json.dart';
import 'package:ifit/data/models/equipment_json.dart';
import 'package:ifit/data/models/studio/social_media_json.dart';


part 'waitlist_booking_json.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class WaitlistBookingJson {
  String? id;
  String? groupClassLinkId;
  String? memberId;
  String? status;
  String? promoCode;
  num? promoAmount;
  String? createdAt;
  String? updatedAt;
  String? createdBy;
  String? updatedBy;
  BookingGroupClassJson? groupClass;
  InstructorJson? instructor;
  WaitlistStudioJson? studio;
  GroupClassSlotJson? groupClassSlot;
  WaitlistBookingFeesJson? bookingFees;

  WaitlistBookingJson();

  factory WaitlistBookingJson.fromJson(Map<String, dynamic> json) =>
      _$WaitlistBookingJsonFromJson(json);

  Map<String, dynamic> toJson() => _$WaitlistBookingJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class GroupClassSlotJson {
  String? date;
  String? startTime;
  String? endTime;
  int? totalBookings;
  int? totalBooked;

  GroupClassSlotJson();

  factory GroupClassSlotJson.fromJson(Map<String, dynamic> json) =>
      _$GroupClassSlotJsonFromJson(json);

  Map<String, dynamic> toJson() => _$GroupClassSlotJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class WaitlistStudioJson {
  String? id;
  String? name;
  String? descr;
  String? contactNo;
  String? email;
  String? address;
  String? placeId;
  double? distance;
  bool? instrLess;
  bool? groupClass;
  bool? fav;
  List<String>? pictures;
  SocialMediaJson? socialMedia;
  double? avgRating;
  int? totalRatingCount;
  List<EquipmentJson>? equipments;

  WaitlistStudioJson();

  factory WaitlistStudioJson.fromJson(Map<String, dynamic> json) =>
      _$WaitlistStudioJsonFromJson(json);

  Map<String, dynamic> toJson() => _$WaitlistStudioJsonToJson(this);

}

@JsonSerializable(explicitToJson: true, checked: true)
class WaitlistBookingFeesJson {
  List<WaitlistBookingFeesItemJson>? items;
  String? total;
  String? totalCredits;
  String? currency;

  WaitlistBookingFeesJson();

  factory WaitlistBookingFeesJson.fromJson(Map<String, dynamic> json) =>
      _$WaitlistBookingFeesJsonFromJson(json);

  Map<String, dynamic> toJson() => _$WaitlistBookingFeesJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class WaitlistBookingFeesItemJson {
  String? name;
  int? type;
  String? price;
  String? credit;
  String? currency;

  WaitlistBookingFeesItemJson();

  factory WaitlistBookingFeesItemJson.fromJson(Map<String, dynamic> json) =>
      _$WaitlistBookingFeesItemJsonFromJson(json);

  Map<String, dynamic> toJson() => _$WaitlistBookingFeesItemJsonToJson(this);
}
