import 'package:json_annotation/json_annotation.dart';

part 'booking_group_class_slot_json.g.dart';

@JsonSerializable(explicitToJson: true, checked: true)
class SearchBookingGroupClassJson {
  List<BookingGroupClassSlotJson>? results;
  String? nextAvailableDate;

  SearchBookingGroupClassJson({this.results, this.nextAvailableDate});

  factory SearchBookingGroupClassJson.fromJson(Map<String, dynamic> json) =>
      _$SearchBookingGroupClassJsonFromJson(json);

  Map<String, dynamic> toJson() => _$SearchBookingGroupClassJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class BookingGroupClassSlotJson {
  BookingGroupClassInstructorJson? instructor;
  BookingGroupClassStudioJson? studio;
  BookingGroupClassJson? groupClass;
  List<BookingGroupSlotJson>? slots;
  BookingGroupClassFeeJson? fees;

  BookingGroupClassSlotJson({
    this.instructor,
    this.studio,
    this.groupClass,
    this.slots,
    this.fees,
  });

  factory BookingGroupClassSlotJson.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassSlotJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassSlotJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class BookingGroupClassInstructorJson {
  String? id;
  String? firebaseUid;
  String? code;
  String? name;
  String? descr;
  String? facebook;
  String? instagram;
  String? certifications;
  String? specialisations;
  List<String>? pictures;
  String? registeredAt;
  bool? onboarded;
  bool? pendingApproval;
  bool? isCompleted;
  bool? notifiedComplete;
  String? createdBy;
  bool? deleted;
  String? avgRating;
  num? totalRatingCount;
  num? totalBookings;

  BookingGroupClassInstructorJson();

  factory BookingGroupClassInstructorJson.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassInstructorJsonFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BookingGroupClassInstructorJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class BookingGroupClassStudioJson {
  String? id;
  String? name;
  String? currency;
  String? countryCode;
  String? timezone;
  String? descr;
  String? contactNo;
  String? email;
  String? address;
  String? placeId;
  String? geocode;
  num? distance;
  bool? fav;
  List<String>? pictures;
  Map<String, dynamic>? socialMedia;
  num? avgRating;
  num? totalRatingCount;
  List<String>? equipments;

  BookingGroupClassStudioJson();

  factory BookingGroupClassStudioJson.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassStudioJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassStudioJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class BookingGroupClassJson {
  String? gpClassLinkId;
  String? name;
  String? intensity;
  bool? autoCancel;
  String? description;
  String? preparation;
  num? minParticipants;
  num? maxParticipants;
  String? studioPrice;
  bool? active;
  String? studioPriceInCredits;

  BookingGroupClassJson();

  factory BookingGroupClassJson.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class BookingGroupSlotJson {
  String? groupClassId;
  String? startTime;
  String? date;
  String? endTime;
  num? totalBookings;
  num? totalBooked;

  BookingGroupSlotJson();

  factory BookingGroupSlotJson.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupSlotJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupSlotJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class BookingGroupClassFeeJson {
  List<BookingGroupClassFeeItemJson>? items;
  String? total;
  String? totalCredits;
  String? currency;

  BookingGroupClassFeeJson();

  factory BookingGroupClassFeeJson.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassFeeJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassFeeJsonToJson(this);
}

@JsonSerializable(explicitToJson: true, checked: true)
class BookingGroupClassFeeItemJson {
  String? name;
  num? type;
  String? price;
  String? credit;
  String? currency;
  String? sign;

  BookingGroupClassFeeItemJson();

  factory BookingGroupClassFeeItemJson.fromJson(Map<String, dynamic> json) =>
      _$BookingGroupClassFeeItemJsonFromJson(json);

  Map<String, dynamic> toJson() => _$BookingGroupClassFeeItemJsonToJson(this);
}
