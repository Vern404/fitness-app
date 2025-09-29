import '../../../domain/entities/booking/booking_review.dart';
import '../equipment_type_json.dart';
import '../instructor_json.dart';
import '../studio/studio_json.dart';
import 'booking_fee_json.dart';
import 'slot_json.dart';

class BookingReviewJson {
  StudioJson? studio;
  InstructorJson? instructor;
  EquipmentTypeJson? equipment;
  SlotJson? slot;
  BookingFeeJson? fees;

  BookingReviewJson({
    this.studio,
    this.instructor,
    this.equipment,
    this.slot,
    this.fees,
  });

  factory BookingReviewJson.fromJson(Map<String, dynamic> json) {
    return BookingReviewJson(
      studio: json['studio'] != null ? StudioJson.fromJson(json['studio']) : null,
      instructor: json['instructor'] != null ? InstructorJson.fromJson(json['instructor']) : null,
      equipment: json['equipment'] != null ? EquipmentTypeJson.fromJson(json['equipment']['type']) : null,
      slot: json['slot'] != null ? SlotJson.fromJson(json['slot']) : null,
      fees: json['fees'] != null ? BookingFeeJson.fromJson(json['fees']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (studio != null) data['studio'] = studio!.toJson();
    if (instructor != null) data['instructor'] = instructor!.toJson();
    if (equipment != null) data['equipment'] = equipment!.toJson();
    if (slot != null) data['slot'] = slot!.toJson();
    if (fees != null) data['fees'] = fees!.toJson();
    return data;
  }

  BookingReview toDomain() {
    return BookingReview(
      studio: studio?.toDomain(),
      instructor: instructor?.toDomain(),
      equipment: equipment?.toDomain(),
      slot: slot?.toDomain(),
      fees: fees?.toDomain(),
    );
  }
}

