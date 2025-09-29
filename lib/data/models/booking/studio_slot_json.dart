import 'package:ifit/data/models/booking/slot_json.dart';
import 'package:ifit/data/models/instructor_json.dart';
import '../../../domain/entities/booking/studio_slot.dart';

class StudioSlotJson {
  InstructorJson? instructor;
  List<SlotJson>? slots;

  StudioSlotJson({
    this.instructor,
    this.slots,
  });

  StudioSlotJson.fromJson(Map<String, dynamic> json) {
    instructor = json['instructor'] != null
        ? InstructorJson.fromJson(json['instructor'])
        : null;

    if (json['slots'] != null) {
      slots = <SlotJson>[];
      json['slots'].forEach((v) {
        slots!.add(SlotJson.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (instructor != null) {
      data['instructor'] = instructor!.toJson();
    }
    if (slots != null) {
      data['slots'] = slots!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  StudioSlot toDomain() {
    return StudioSlot(
      instructor: instructor?.toDomain(),
      slots: slots?.map((slot) => slot.toDomain()).toList(),
    );
  }
}