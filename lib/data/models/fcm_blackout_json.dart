import 'package:ifit/core/extensions/date_time_extension.dart';

import '../../domain/entities/fcm_blackout.dart';

class FcmBlackoutJson {
  String? blackoutStart;
  String? blackoutEnd;
  bool? blackout;

  FcmBlackoutJson({this.blackoutStart, this.blackoutEnd, this.blackout});

  FcmBlackoutJson.fromJson(Map<String, dynamic> json) {
    blackoutStart = json['blackoutStart'];
    blackoutEnd = json['blackoutEnd'];
    blackout = json['blackout'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['blackoutStart'] = blackoutStart;
    data['blackoutEnd'] = blackoutEnd;
    data['blackout'] = blackout;
    return data;
  }

  FcmBlackout toDomain() {
    return FcmBlackout(
      blackoutStart: blackoutStart?.to12HourFormat(),
      blackoutEnd: blackoutEnd?.to12HourFormat(),
      blackout: blackout ?? false,
    );
  }
}
