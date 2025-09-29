import 'package:ifit/domain/entities/booking/slot.dart';

class SlotJson {
  final String? time;

  const SlotJson({this.time});

  factory SlotJson.fromJson(Map<String, dynamic> json) {
    return SlotJson(time: json['time']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = time;
    return data;
  }

  Slot toDomain() {
    return Slot(time: time);
  }
}
