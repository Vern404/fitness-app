import 'package:ifit/domain/entities/blackout_dates_response.dart';

import '../../domain/entities/blackout_event.dart';
import 'blackout_event_json.dart';

class BlackoutDatesResponseJson {
  final Map<String, List<BlackoutEventJson>> dateEvents;

  BlackoutDatesResponseJson(this.dateEvents);

  factory BlackoutDatesResponseJson.fromJson(Map<String, dynamic> json) {
    final eventsMap = <String, List<BlackoutEventJson>>{};

    json.forEach((date, eventsJson) {
      eventsMap[date] = (eventsJson as List)
          .map((eventJson) => BlackoutEventJson.fromJson(eventJson))
          .toList();
    });

    return BlackoutDatesResponseJson(eventsMap);
  }

  Map<String, dynamic> toJson() {
    return {
      for (var entry in dateEvents.entries)
        entry.key: entry.value.map((e) => e.toJson()).toList(),
    };
  }

  BlackoutDatesResponse toDomain() {
    final domainEvents = <String, List<BlackoutEvent>>{};

    dateEvents.forEach((date, events) {
      domainEvents[date] = events.map((event) => event.toDomain()).toList();
    });

    return BlackoutDatesResponse(domainEvents);
  }
}