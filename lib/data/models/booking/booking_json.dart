// booking_json.dart

import 'package:ifit/core/enums/booking_type.dart';
import 'package:ifit/core/enums/invite_status.dart';
import 'package:ifit/core/extensions/number_extension.dart';
import 'package:ifit/data/models/app_user_json.dart';
import 'package:ifit/data/models/booking/group_booking_json.dart';
import 'package:ifit/data/models/booking/group_booking_mapper.dart';
import 'package:ifit/data/models/booking/session_feedback_json.dart';
import 'package:ifit/data/models/equipment_type_json.dart';
import '../../../core/enums/booking_status.dart';
import '../../../domain/entities/booking/booking.dart';
import '../studio/studio_json.dart';
import 'booking_fee_json.dart';
import 'member_booking_feedback_json.dart';
import 'notes_json.dart';

class BookingJson {
  String? id;
  String? studioId;
  StudioJson? studio;
  String? type;
  String? classType;
  String? bookingType;
  String? bookingRefNo;
  String? bookingStatus;
  String? status;
  List<FeeItemJson>? bookingFeesItems;
  String? bookingFeesTotal;
  String? bookingFeestotalCredits;
  String? startDate;
  String? startTime;
  String? endDate;
  String? endTime;
  String? color;
  String? equipmentId;
  EquipmentTypeJson? equipment;
  String? instructorId;
  AppUserJson? instructor;
  String? memberId;
  AppUserJson? member;
  NotesJson? notes;
  bool? hasMemberFeedback;
  MemberBookingFeedbackJson? feedback;
  SessionFeedbackJson? record;
  String? cancelReason;
  String? doorPin;
  String? instrNoShowRemark;
  bool? bookedByAdmin;
  String? groupClassStatus;
  BookingGroupClassJson? groupClass;

  BookingJson({
    this.id,
    this.studioId,
    this.studio,
    this.type,
    this.classType,
    this.bookingRefNo,
    this.bookingStatus,
    this.bookingType,
    this.status,
    this.bookingFeesTotal,
    this.bookingFeestotalCredits,
    this.bookingFeesItems,
    this.startDate,
    this.startTime,
    this.endDate,
    this.endTime,
    this.color,
    this.equipmentId,
    this.equipment,
    this.instructorId,
    this.instructor,
    this.memberId,
    this.member,
    this.notes,
    this.hasMemberFeedback,
    this.feedback,
    this.record,
    this.cancelReason,
    this.doorPin,
    this.instrNoShowRemark,
    this.bookedByAdmin,
    this.groupClassStatus,
    this.groupClass,
  });

  BookingJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    studioId = json['studioId'];
    studio = json['studio'] != null
        ? StudioJson.fromJson(json['studio'])
        : null;
    type = json['type'];
    classType = json['classType'];
    bookingRefNo = json['bookingRefNo'];
    bookingStatus = json['bookingStatus'];
    bookingType = json['bookingType'];
    bookingFeesTotal = json['bookingFeesTotal'];
    bookingFeestotalCredits = json['bookingFeestotalCredits'];
    if (json['bookingFeesItems'] != null) {
      bookingFeesItems = <FeeItemJson>[];
      json['bookingFeesItems'].forEach((v) {
        bookingFeesItems!.add(FeeItemJson.fromJson(v));
      });
    }
    startDate = json['startDate'];
    startTime = json['startTime'];
    endDate = json['endDate'];
    endTime = json['endTime'];
    color = json['color'];
    equipmentId = json['equipmentId'];
    equipment = json['equipment'] != null
        ? EquipmentTypeJson.fromJson(json['equipment'])
        : null;
    instructorId = json['instructorId'];
    instructor = json['instructor'] != null
        ? AppUserJson.fromJson(json['instructor'])
        : null;
    memberId = json['memberId'];
    member = json['member'] != null
        ? AppUserJson.fromJson(json['member'])
        : null;
    notes = json['notes'] != null ? NotesJson.fromJson(json['notes']) : null;
    hasMemberFeedback = json['hasMemberFeedback'];

    feedback = json['feedback'] != null
        ? MemberBookingFeedbackJson.fromJson(json['feedback'])
        : null;
    record = json['record'] != null
        ? SessionFeedbackJson.fromJson(json['record'])
        : null;
    status = json['status'];
    cancelReason = json['cancelReason'];
    doorPin = json['doorPin'];
    instrNoShowRemark = json['instrNoShowRemark'];
    bookedByAdmin = json['bookedByAdmin'];
    groupClassStatus = json['groupClassStatus'];
    groupClass = json['groupClass'] != null
        ? BookingGroupClassJson.fromJson(json['groupClass'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['studioId'] = studioId;
    if (studio != null) {
      data['studio'] = studio!.toJson();
    }
    data['type'] = type;
    data['classType'] = classType;
    data['bookingRefNo'] = bookingRefNo;
    data['bookingStatus'] = bookingStatus;
    data['bookingType'] = bookingType;
    data['bookingFeesTotal'] = bookingFeesTotal;
    data['bookingFeestotalCredits'] = bookingFeestotalCredits;
    if (bookingFeesItems != null) {
      data['bookingFeesItems'] = bookingFeesItems!
          .map((v) => v.toJson())
          .toList();
    }
    data['startDate'] = startDate;
    data['startTime'] = startTime;
    data['endDate'] = endDate;
    data['endTime'] = endTime;
    data['color'] = color;
    data['equipmentId'] = equipmentId;
    if (equipment != null) {
      data['equipment'] = equipment!.toJson();
    }
    data['instructorId'] = instructorId;
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    data['memberId'] = memberId;
    if (member != null) {
      data['member'] = member!.toJson();
    }
    if (notes != null) {
      data['notes'] = notes!.toJson();
    }
    data['hasMemberFeedback'] = hasMemberFeedback;
    if (feedback != null) {
      data['feedback'] = feedback!.toJson();
    }
    if (record != null) {
      data['record'] = record!.toJson();
    }
    data['status'] = status;
    data['cancelReason'] = cancelReason;
    data['doorPin'] = doorPin;
    data['instrNoShowRemark'] = instrNoShowRemark;
    data['bookedByAdmin'] = bookedByAdmin;
    if (groupClass != null) {
      data['groupClass'] = groupClass!.toJson();
    }
    data['groupClassStatus'] = groupClassStatus;
    return data;
  }

  Booking toDomain() {
    return Booking(
      id: id,
      studioId: studioId,
      studio: studio?.toDomain(),
      type: type,
      classType: BookingType.fromString(classType ?? ''),
      bookingRefNo: bookingRefNo,
      bookingStatus: bookingStatus,
      status: BookingStatus.fromString(status ?? ""),
      bookingType: BookingType.fromString(bookingType ?? ""),
      bookingFeesTotal: bookingFeesTotal,
      bookingFeesTotalCredits: int.tryParse(
        bookingFeestotalCredits ?? "0",
      )?.toIndianFormat(),
      bookingFeesItems: bookingFeesItems
          ?.map((item) => item.toDomain())
          .toList(),
      startDate: startDate,
      startTime: startTime,
      endDate: endDate,
      endTime: endTime,
      color: color,
      equipmentId: equipmentId,
      equipment: equipment?.toDomain(),
      instructorId: instructorId,
      instructor: instructor?.toDomain(),
      memberId: memberId,
      member: member?.toDomain(),
      notes: notes?.toDomain(),
      hasMemberFeedback: hasMemberFeedback ?? false,
      feedback: feedback?.toDomain(),
      record: record?.toDomain(),
      cancelReason: instrNoShowRemark ?? cancelReason,
      doorPin: doorPin,
      bookedByAdmin: bookedByAdmin,
      groupClassStatus: InviteStatus.fromString(groupClassStatus ?? ''),
      groupClass: groupClass?.toEntity(),
    );
  }
}
