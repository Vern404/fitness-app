import 'package:ifit/data/models/booking/booking_json.dart';
import 'package:ifit/domain/entities/booking/booking.dart';

import '../../domain/entities/schedule_calendar_response.dart';

class ScheduleCalendarResponseJson {
  final Map<String, List<BookingJson>> dateBookings;

  ScheduleCalendarResponseJson(this.dateBookings);

  factory ScheduleCalendarResponseJson.fromJson(Map<String, dynamic> json) {
    final bookingsMap = <String, List<BookingJson>>{};

    json.forEach((date, eventsJson) {
      bookingsMap[date] =
          (eventsJson as List)
              .map((booking) => BookingJson.fromJson(booking))
              .toList();
    });

    return ScheduleCalendarResponseJson(bookingsMap);
  }

  Map<String, dynamic> toJson() {
    return {
      for (var entry in dateBookings.entries)
        entry.key: entry.value.map((e) => e.toJson()).toList(),
    };
  }

  ScheduleCalendarResponse toDomain() {
    final domainBookings = <String, List<Booking>>{};

    dateBookings.forEach((date, events) {
      domainBookings[date] = events.map((event) => event.toDomain()).toList();
    });

    return ScheduleCalendarResponse(domainBookings);
  }
}
