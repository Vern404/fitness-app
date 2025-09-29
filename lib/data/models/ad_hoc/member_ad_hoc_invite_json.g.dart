// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_ad_hoc_invite_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemberAdHocInviteJson _$MemberAdHocInviteJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MemberAdHocInviteJson', json, ($checkedConvert) {
  final val = MemberAdHocInviteJson();
  $checkedConvert('id', (v) => val.id = v as String?);
  $checkedConvert('studioId', (v) => val.studioId = v as String?);
  $checkedConvert('type', (v) => val.type = v as String?);
  $checkedConvert('gpClassType', (v) => val.gpClassType = v as String?);
  $checkedConvert('gpClassLinkId', (v) => val.gpClassLinkId = v as String?);
  $checkedConvert('bookingRefNo', (v) => val.bookingRefNo = v as String?);
  $checkedConvert('bookingStatus', (v) => val.bookingStatus = v as String?);
  $checkedConvert('paymentReqId', (v) => val.paymentReqId = v as String?);
  $checkedConvert(
    'bookingFees',
    (v) => val.bookingFees = v == null
        ? null
        : BookingFeesJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert('promoCode', (v) => val.promoCode = v as String?);
  $checkedConvert('name', (v) => val.name = v as String?);
  $checkedConvert('internalRemarks', (v) => val.internalRemarks = v as String?);
  $checkedConvert('countryCode', (v) => val.countryCode = v as String?);
  $checkedConvert('timezone', (v) => val.timezone = v as String?);
  $checkedConvert('startDate', (v) => val.startDate = v as String?);
  $checkedConvert('startTime', (v) => val.startTime = v as String?);
  $checkedConvert('endDate', (v) => val.endDate = v as String?);
  $checkedConvert('endTime', (v) => val.endTime = v as String?);
  $checkedConvert('isFullDay', (v) => val.isFullDay = v as bool?);
  $checkedConvert('equipmentId', (v) => val.equipmentId = v as String?);
  $checkedConvert('instructorId', (v) => val.instructorId = v as String?);
  $checkedConvert('memberId', (v) => val.memberId = v as String?);
  $checkedConvert('cancelled', (v) => val.cancelled = v as bool?);
  $checkedConvert('cancelledAt', (v) => val.cancelledAt = v as String?);
  $checkedConvert('cancelledById', (v) => val.cancelledById = v as String?);
  $checkedConvert('cancelReason', (v) => val.cancelReason = v as String?);
  $checkedConvert(
    'cancelledWithRefund',
    (v) => val.cancelledWithRefund = v as bool?,
  );
  $checkedConvert('reinvitationSent', (v) => val.reinvitationSent = v as bool?);
  $checkedConvert('instrNoShow', (v) => val.instrNoShow = v as bool?);
  $checkedConvert('instrNoShowAt', (v) => val.instrNoShowAt = v as String?);
  $checkedConvert('instrNoShowById', (v) => val.instrNoShowById = v as String?);
  $checkedConvert(
    'instrNoShowRemarks',
    (v) => val.instrNoShowRemarks = v as String?,
  );
  $checkedConvert(
    'studio',
    (v) => val.studio = v == null
        ? null
        : StudioAdHocJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert(
    'equipment',
    (v) => val.equipment = v == null
        ? null
        : EquipmentJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert(
    'member',
    (v) => val.member = v == null
        ? null
        : MemberJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert(
    'session',
    (v) => val.session = v == null
        ? null
        : SessionJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert(
    'groupClass',
    (v) => val.groupClass = v == null
        ? null
        : GroupClassJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert(
    'instructor',
    (v) => val.instructor = v == null
        ? null
        : AdHocInstructorJson.fromJson(v as Map<String, dynamic>),
  );
  return val;
});

Map<String, dynamic> _$MemberAdHocInviteJsonToJson(
  MemberAdHocInviteJson instance,
) => <String, dynamic>{
  'id': instance.id,
  'studioId': instance.studioId,
  'type': instance.type,
  'gpClassType': instance.gpClassType,
  'gpClassLinkId': instance.gpClassLinkId,
  'bookingRefNo': instance.bookingRefNo,
  'bookingStatus': instance.bookingStatus,
  'paymentReqId': instance.paymentReqId,
  'bookingFees': instance.bookingFees?.toJson(),
  'promoCode': instance.promoCode,
  'name': instance.name,
  'internalRemarks': instance.internalRemarks,
  'countryCode': instance.countryCode,
  'timezone': instance.timezone,
  'startDate': instance.startDate,
  'startTime': instance.startTime,
  'endDate': instance.endDate,
  'endTime': instance.endTime,
  'isFullDay': instance.isFullDay,
  'equipmentId': instance.equipmentId,
  'instructorId': instance.instructorId,
  'memberId': instance.memberId,
  'cancelled': instance.cancelled,
  'cancelledAt': instance.cancelledAt,
  'cancelledById': instance.cancelledById,
  'cancelReason': instance.cancelReason,
  'cancelledWithRefund': instance.cancelledWithRefund,
  'reinvitationSent': instance.reinvitationSent,
  'instrNoShow': instance.instrNoShow,
  'instrNoShowAt': instance.instrNoShowAt,
  'instrNoShowById': instance.instrNoShowById,
  'instrNoShowRemarks': instance.instrNoShowRemarks,
  'studio': instance.studio?.toJson(),
  'equipment': instance.equipment?.toJson(),
  'member': instance.member?.toJson(),
  'session': instance.session?.toJson(),
  'groupClass': instance.groupClass?.toJson(),
  'instructor': instance.instructor?.toJson(),
};

BookingFeesJson _$BookingFeesJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BookingFeesJson', json, ($checkedConvert) {
      final val = BookingFeesJson();
      $checkedConvert(
        'items',
        (v) => val.items = (v as List<dynamic>?)
            ?.map((e) => BookingFeeItemJson.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
      $checkedConvert('total', (v) => val.total = v as String?);
      $checkedConvert('totalCredits', (v) => val.totalCredits = v as String?);
      $checkedConvert('currency', (v) => val.currency = v as String?);
      return val;
    });

Map<String, dynamic> _$BookingFeesJsonToJson(BookingFeesJson instance) =>
    <String, dynamic>{
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'totalCredits': instance.totalCredits,
      'currency': instance.currency,
    };

BookingFeeItemJson _$BookingFeeItemJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BookingFeeItemJson', json, ($checkedConvert) {
      final val = BookingFeeItemJson();
      $checkedConvert('name', (v) => val.name = v as String?);
      $checkedConvert('type', (v) => val.type = (v as num?)?.toInt());
      $checkedConvert('price', (v) => val.price = v as String?);
      $checkedConvert('credit', (v) => val.credit = v as String?);
      $checkedConvert('currency', (v) => val.currency = v as String?);
      return val;
    });

Map<String, dynamic> _$BookingFeeItemJsonToJson(BookingFeeItemJson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'price': instance.price,
      'credit': instance.credit,
      'currency': instance.currency,
    };

StudioAdHocJson _$StudioAdHocJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StudioAdHocJson', json, ($checkedConvert) {
      final val = StudioAdHocJson();
      $checkedConvert('id', (v) => val.id = v as String?);
      $checkedConvert('name', (v) => val.name = v as String?);
      $checkedConvert('address', (v) => val.address = v as String?);
      $checkedConvert('placeId', (v) => val.placeId = v as String?);
      $checkedConvert('lat', (v) => val.lat = v as String?);
      $checkedConvert('lng', (v) => val.lng = v as String?);
      return val;
    });

Map<String, dynamic> _$StudioAdHocJsonToJson(StudioAdHocJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'placeId': instance.placeId,
      'lat': instance.lat,
      'lng': instance.lng,
    };

EquipmentJson _$EquipmentJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('EquipmentJson', json, ($checkedConvert) {
      final val = EquipmentJson();
      $checkedConvert('code', (v) => val.code = v as String?);
      $checkedConvert('name', (v) => val.name = v as String?);
      $checkedConvert('privacy', (v) => val.privacy = v as bool?);
      return val;
    });

Map<String, dynamic> _$EquipmentJsonToJson(EquipmentJson instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'privacy': instance.privacy,
    };

MemberJson _$MemberJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MemberJson', json, ($checkedConvert) {
      final val = MemberJson();
      $checkedConvert('fullName', (v) => val.fullName = v as String?);
      return val;
    });

Map<String, dynamic> _$MemberJsonToJson(MemberJson instance) =>
    <String, dynamic>{'fullName': instance.fullName};

SessionJson _$SessionJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SessionJson', json, ($checkedConvert) {
  final val = SessionJson();
  $checkedConvert('bookingId', (v) => val.bookingId = v as String?);
  $checkedConvert('instructorId', (v) => val.instructorId = v as String?);
  $checkedConvert('memberId', (v) => val.memberId = v as String?);
  $checkedConvert(
    'notes',
    (v) => val.notes = v == null
        ? null
        : SessionNotesJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert('record', (v) => val.record = v);
  $checkedConvert(
    'recordFlexi',
    (v) => val.recordFlexi = v == null
        ? null
        : SessionRecordFlexiJson.fromJson(v as Map<String, dynamic>),
  );
  $checkedConvert('recordMode', (v) => val.recordMode = (v as num?)?.toInt());
  $checkedConvert('completed', (v) => val.completed = v as bool?);
  $checkedConvert(
    'hasMemberFeedback',
    (v) => val.hasMemberFeedback = v as bool?,
  );
  $checkedConvert('memberFeedback', (v) => val.memberFeedback = v);
  $checkedConvert('instructorFeedback', (v) => val.instructorFeedback = v);
  $checkedConvert(
    'instructorRating',
    (v) => val.instructorRating = (v as num?)?.toInt(),
  );
  $checkedConvert('studioFeedback', (v) => val.studioFeedback = v);
  $checkedConvert(
    'studioRating',
    (v) => val.studioRating = (v as num?)?.toInt(),
  );
  $checkedConvert(
    'isPrivateFeedback',
    (v) => val.isPrivateFeedback = v as bool?,
  );
  $checkedConvert('memberNoFeedback', (v) => val.memberNoFeedback = v as bool?);
  $checkedConvert('doorPin', (v) => val.doorPin = v as String?);
  return val;
});

Map<String, dynamic> _$SessionJsonToJson(SessionJson instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'instructorId': instance.instructorId,
      'memberId': instance.memberId,
      'notes': instance.notes?.toJson(),
      'record': instance.record,
      'recordFlexi': instance.recordFlexi?.toJson(),
      'recordMode': instance.recordMode,
      'completed': instance.completed,
      'hasMemberFeedback': instance.hasMemberFeedback,
      'memberFeedback': instance.memberFeedback,
      'instructorFeedback': instance.instructorFeedback,
      'instructorRating': instance.instructorRating,
      'studioFeedback': instance.studioFeedback,
      'studioRating': instance.studioRating,
      'isPrivateFeedback': instance.isPrivateFeedback,
      'memberNoFeedback': instance.memberNoFeedback,
      'doorPin': instance.doorPin,
    };

SessionNotesJson _$SessionNotesJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SessionNotesJson', json, ($checkedConvert) {
      final val = SessionNotesJson();
      $checkedConvert('state', (v) => val.state = v as String?);
      $checkedConvert('target', (v) => val.target = v as String?);
      return val;
    });

Map<String, dynamic> _$SessionNotesJsonToJson(SessionNotesJson instance) =>
    <String, dynamic>{'state': instance.state, 'target': instance.target};

SessionRecordFlexiJson _$SessionRecordFlexiJsonFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SessionRecordFlexiJson', json, ($checkedConvert) {
  final val = SessionRecordFlexiJson();
  $checkedConvert(
    'segments',
    (v) =>
        val.segments = (v as List<dynamic>?)?.map((e) => e as String).toList(),
  );
  $checkedConvert('feedback', (v) => val.feedback = v as String?);
  $checkedConvert(
    'overallRating',
    (v) => val.overallRating = (v as num?)?.toInt(),
  );
  $checkedConvert('recordMode', (v) => val.recordMode = (v as num?)?.toInt());
  return val;
});

Map<String, dynamic> _$SessionRecordFlexiJsonToJson(
  SessionRecordFlexiJson instance,
) => <String, dynamic>{
  'segments': instance.segments,
  'feedback': instance.feedback,
  'overallRating': instance.overallRating,
  'recordMode': instance.recordMode,
};

GroupClassJson _$GroupClassJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('GroupClassJson', json, ($checkedConvert) {
      final val = GroupClassJson();
      $checkedConvert('id', (v) => val.id = v as String?);
      $checkedConvert('gpClassLinkId', (v) => val.gpClassLinkId = v as String?);
      $checkedConvert('instructorId', (v) => val.instructorId = v as String?);
      $checkedConvert('studioId', (v) => val.studioId = v as String?);
      $checkedConvert('name', (v) => val.name = v as String?);
      $checkedConvert('minMemberCt', (v) => val.minMemberCt = v as num?);
      $checkedConvert('maxMemberCt', (v) => val.maxMemberCt = v as num?);
      $checkedConvert('currency', (v) => val.currency = v as String?);
      $checkedConvert(
        'instructorPrice',
        (v) => val.instructorPrice = v as String?,
      );
      $checkedConvert('remark', (v) => val.remark = v as String?);
      return val;
    });

Map<String, dynamic> _$GroupClassJsonToJson(GroupClassJson instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gpClassLinkId': instance.gpClassLinkId,
      'instructorId': instance.instructorId,
      'studioId': instance.studioId,
      'name': instance.name,
      'minMemberCt': instance.minMemberCt,
      'maxMemberCt': instance.maxMemberCt,
      'currency': instance.currency,
      'instructorPrice': instance.instructorPrice,
      'remark': instance.remark,
    };

AdHocInstructorJson _$AdHocInstructorJsonFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AdHocInstructorJson', json, ($checkedConvert) {
      final val = AdHocInstructorJson();
      $checkedConvert('fullName', (v) => val.fullName = v as String?);
      $checkedConvert(
        'pictures',
        (v) => val.pictures = (v as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
      );
      return val;
    });

Map<String, dynamic> _$AdHocInstructorJsonToJson(
  AdHocInstructorJson instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'pictures': instance.pictures,
};
