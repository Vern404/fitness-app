import 'package:flutter/material.dart';
import 'package:ifit/domain/entities/blackout_event.dart';

class BlackoutEventJson {
  String? id;
  String? name;
  String? startDate;
  String? startTime;
  String? endDate;
  String? endTime;
  bool? fullDay;

  BlackoutEventJson({
    this.id,
    this.name,
    this.startDate,
    this.startTime,
    this.endDate,
    this.endTime,
    this.fullDay,
  });

  BlackoutEventJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    startDate = json['startDate'];
    startTime = json['startTime'];
    endDate = json['endDate'];
    endTime = json['endTime'];
    fullDay = json['fullDay'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['startDate'] = startDate;
    data['startTime'] = startTime;
    data['endDate'] = endDate;
    data['endTime'] = endTime;
    data['fullDay'] = fullDay;

    return data;
  }

  BlackoutEvent toDomain() {
    // Parse date strings to DateTime
    final startDt = startDate != null ? DateTime.parse(startDate!) : null;
    final endDt = endDate != null ? DateTime.parse(endDate!) : null;

    // Parse time strings to TimeOfDay (assuming format is "HH:mm")
    TimeOfDay? parseTime(String? timeStr) {
      if (timeStr == null) return null;

      final parts = timeStr.split(':');
      return TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
    }

    return BlackoutEvent(
      id: id,
      name: name,
      startDate: startDt,
      startTime: parseTime(startTime),
      endDate: endDt,
      endTime: parseTime(endTime),
      fullDay: fullDay ?? false,
    );
  }
}
