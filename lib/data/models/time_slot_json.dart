import 'package:ifit/core/extensions/date_time_extension.dart';
import 'package:ifit/domain/entities/time_slot.dart';

class TimeSlotJson {
  final String start;
  final String end;
  final double? price;

  TimeSlotJson({required this.start, required this.end, this.price});

  factory TimeSlotJson.fromJson(Map<String, dynamic> json) {
    return TimeSlotJson(
      start: json['start'] as String,
      end: json['end'] as String,
      price: double.parse(json['price'] ?? "0"),
    );
  }

  Map<String, dynamic> toJson() {
    return {'start': start, 'end': end, 'price': price?.toStringAsFixed(2)};
  }

  TimeSlot toDomain() {
    return TimeSlot(
      start: start.to12HourFormat(),
      end: end.to12HourFormat(),
      price: price ?? 0,
    );
  }
}
