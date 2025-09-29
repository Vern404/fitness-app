import 'package:ifit/domain/entities/emergency_contact.dart';

import 'mobile_no_json.dart';

class EmergencyContactJson {
  String? name;
  MobileNoJson? contactNo;

  EmergencyContactJson({this.name, this.contactNo});

  EmergencyContactJson.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    contactNo = json['contactNo'] != null
        ? MobileNoJson.fromJson(json['contactNo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (contactNo != null) {
      data['contactNo'] = contactNo!.toJson();
    }
    return data;
  }
  EmergencyContact toDomain(){
    return EmergencyContact(
      name: name,
      contactNo: contactNo?.toDomain(),
    );
  }
}