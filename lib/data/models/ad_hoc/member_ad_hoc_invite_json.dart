import 'package:json_annotation/json_annotation.dart';

part 'member_ad_hoc_invite_json.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class MemberAdHocInviteJson {
  String? id;
  String? studioId;
  String? type;
  String? gpClassType;
  String? gpClassLinkId;
  String? bookingRefNo;
  String? bookingStatus;
  String? paymentReqId;
  BookingFeesJson? bookingFees;
  String? promoCode;
  String? name;
  String? internalRemarks;
  String? countryCode;
  String? timezone;
  String? startDate;
  String? startTime;
  String? endDate;
  String? endTime;
  bool? isFullDay;
  String? equipmentId;
  String? instructorId;
  String? memberId;
  bool? cancelled;
  String? cancelledAt;
  String? cancelledById;
  String? cancelReason;
  bool? cancelledWithRefund;
  bool? reinvitationSent;
  bool? instrNoShow;
  String? instrNoShowAt;
  String? instrNoShowById;
  String? instrNoShowRemarks;
  StudioAdHocJson? studio;
  EquipmentJson? equipment;
  MemberJson? member;
  SessionJson? session;
  GroupClassJson? groupClass;
  AdHocInstructorJson? instructor;

  MemberAdHocInviteJson();

  factory MemberAdHocInviteJson.fromJson(Map<String, dynamic> json) =>
      _$MemberAdHocInviteJsonFromJson(json);

  Map<String, dynamic> toJson() => _$MemberAdHocInviteJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class BookingFeesJson {
  List<BookingFeeItemJson>? items;
  String? total;
  String? totalCredits;
  String? currency;

  BookingFeesJson();

  factory BookingFeesJson.fromJson(Map<String, dynamic> json) =>
      _$BookingFeesJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingFeesJsonToJson(this);
}

@JsonSerializable(checked: true)
class BookingFeeItemJson {
  String? name;
  int? type;
  String? price;
  String? credit;
  String? currency;

  BookingFeeItemJson();

  factory BookingFeeItemJson.fromJson(Map<String, dynamic> json) =>
      _$BookingFeeItemJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingFeeItemJsonToJson(this);
}

@JsonSerializable(checked: true)
class StudioAdHocJson {
  String? id;
  String? name;
  String? address;
  String? placeId;
  String? lat;
  String? lng;

  StudioAdHocJson();

  factory StudioAdHocJson.fromJson(Map<String, dynamic> json) =>
      _$StudioAdHocJsonFromJson(json);

  Map<String, dynamic> toJson() => _$StudioAdHocJsonToJson(this);
}

@JsonSerializable(checked: true)
class EquipmentJson {
  String? code;
  String? name;
  bool? privacy;

  EquipmentJson();

  factory EquipmentJson.fromJson(Map<String, dynamic> json) =>
      _$EquipmentJsonFromJson(json);

  Map<String, dynamic> toJson() => _$EquipmentJsonToJson(this);
}

@JsonSerializable(checked: true)
class MemberJson {
  String? fullName;

  MemberJson();

  factory MemberJson.fromJson(Map<String, dynamic> json) =>
      _$MemberJsonFromJson(json);

  Map<String, dynamic> toJson() => _$MemberJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class SessionJson {
  String? bookingId;
  String? instructorId;
  String? memberId;
  SessionNotesJson? notes;
  dynamic record;
  SessionRecordFlexiJson? recordFlexi;
  int? recordMode;
  bool? completed;
  bool? hasMemberFeedback;
  dynamic memberFeedback;
  dynamic instructorFeedback;
  int? instructorRating;
  dynamic studioFeedback;
  int? studioRating;
  bool? isPrivateFeedback;
  bool? memberNoFeedback;
  String? doorPin;

  SessionJson();

  factory SessionJson.fromJson(Map<String, dynamic> json) =>
      _$SessionJsonFromJson(json);

  Map<String, dynamic> toJson() => _$SessionJsonToJson(this);
}

@JsonSerializable(checked: true)
class SessionNotesJson {
  String? state;
  String? target;

  SessionNotesJson();

  factory SessionNotesJson.fromJson(Map<String, dynamic> json) =>
      _$SessionNotesJsonFromJson(json);

  Map<String, dynamic> toJson() => _$SessionNotesJsonToJson(this);
}

@JsonSerializable(checked: true)
class SessionRecordFlexiJson {
  List<String>? segments;
  String? feedback;
  int? overallRating;
  int? recordMode;

  SessionRecordFlexiJson();

  factory SessionRecordFlexiJson.fromJson(Map<String, dynamic> json) =>
      _$SessionRecordFlexiJsonFromJson(json);

  Map<String, dynamic> toJson() => _$SessionRecordFlexiJsonToJson(this);
}

@JsonSerializable(checked: true)
class GroupClassJson {
  String? id;
  String? gpClassLinkId;
  String? instructorId;
  String? studioId;
  String? name;
  num? minMemberCt;
  num? maxMemberCt;
  String? currency;
  String? instructorPrice;
  String? remark;

  GroupClassJson();

  factory GroupClassJson.fromJson(Map<String, dynamic> json) =>
      _$GroupClassJsonFromJson(json);

  Map<String, dynamic> toJson() => _$GroupClassJsonToJson(this);
}

@JsonSerializable( checked: true)
class AdHocInstructorJson {
  String? fullName;
  List<String>? pictures;

  AdHocInstructorJson();

  factory AdHocInstructorJson.fromJson(Map<String, dynamic> json) =>
      _$AdHocInstructorJsonFromJson(json);

  Map<String, dynamic> toJson() => _$AdHocInstructorJsonToJson(this);
}

