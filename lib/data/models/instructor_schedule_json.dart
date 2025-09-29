import 'package:ifit/domain/entities/instructor_schedule.dart';

import '../../core/extensions/schedule_type.dart';
import 'time_slot_json.dart';

class InstructorScheduleJson {
  final String type;
  final List<TimeSlotJson> rates;

  InstructorScheduleJson({required this.type, required this.rates});

  factory InstructorScheduleJson.fromJson(Map<String, dynamic> json) {
    return InstructorScheduleJson(
      type: json['type'],
      rates:
          (json['rates'] as List)
              .map((e) => TimeSlotJson.fromJson(e as Map<String, dynamic>))
              .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'rates': rates.map((e) => e.toJson()).toList()};
  }

  InstructorSchedule toDomain() {
    return InstructorSchedule(
      type: ScheduleType.fromValue(type),
      rates: rates.map((rate) => rate.toDomain()).toList(),
    );
  }
}
