
import '../../core/extensions/schedule_type.dart';
import '../../domain/entities/working_hour.dart';
import 'time_slot_json.dart';

class WorkingHourJson {
  final String type;
  final List<TimeSlotJson> rates;

  WorkingHourJson({required this.type, required this.rates});

  factory WorkingHourJson.fromJson(Map<String, dynamic> json) {
    return WorkingHourJson(
      type: json['type'],
      rates:
      (json['slots'] as List)
          .map((e) => TimeSlotJson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'slots': rates.map((e) => e.toJson()).toList()};
  }

  WorkingHour toDomain() {
    return WorkingHour(
      type: ScheduleType.fromValue(type),
      rates: rates.map((rate) => rate.toDomain()).toList(),
    );
  }
}
