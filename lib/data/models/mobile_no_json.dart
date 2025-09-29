import 'package:ifit/domain/entities/mobile_no.dart';

class MobileNoJson {
  String? countryCode;
  String? number;

  MobileNoJson({this.countryCode, this.number});

  // Convert the MobileNo object to a JSON map
  Map<String, dynamic> toJson() {
    return {'countryCode': countryCode, 'number': number};
  }

  MobileNoJson.fromJson(Map<String, dynamic> json) {
    countryCode = json['countryCode'];
    number = json['number'];
  }

  MobileNo toDomain() {
    if (countryCode != null) {
      countryCode = countryCode!.trim();
      countryCode =
          (countryCode!.contains("+") ? countryCode : "+$countryCode");
    }
    return MobileNo(number: number, countryCode: countryCode);
  }
}
