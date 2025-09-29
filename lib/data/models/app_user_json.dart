import 'package:ifit/data/models/credit/credit_json.dart';
import 'package:ifit/domain/entities/app_user.dart';
import 'package:ifit/domain/entities/credit/credit.dart';
import 'emergency_contact_json.dart';
import 'mobile_no_json.dart';

class AppUserJson {
  String? fullName;
  String? displayName;
  String? gender;
  String? email;
  MobileNoJson? mobileNo;
  EmergencyContactJson? emergencyContact;
  CreditJson? credit;
  bool? requestDelete;

  AppUserJson({
    this.fullName,
    this.displayName,
    this.gender,
    this.email,
    this.mobileNo,
    this.emergencyContact,
    this.credit,

    this.requestDelete,
  });

  AppUserJson.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    displayName = json['displayName'];
    gender = json['gender'];
    email = json['email'];
    mobileNo =
        json['mobileNo'] != null
            ? MobileNoJson.fromJson(json['mobileNo'])
            : null;
    emergencyContact =
        json['emergencyContact'] != null
            ? EmergencyContactJson.fromJson(json['emergencyContact'])
            : null;
    credit =
        json['credit'] != null
            ? CreditJson.fromJson(json['credit'])
            : null;

    requestDelete = json['requestDelete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullName'] = fullName;
    data['displayName'] = displayName;
    data['gender'] = gender;
    data['email'] = email;
    if (mobileNo != null) {
      data['mobileNo'] = mobileNo!.toJson();
    }
    if (emergencyContact != null) {
      data['emergencyContact'] = emergencyContact!.toJson();
    }
    if (credit != null) {
      data['credit'] = credit!.toJson();
    }

    data['requestDelete'] = requestDelete;
    return data;
  }

  AppUser toDomain() {
    return AppUser(
      fullName: fullName,
      displayName: displayName,
      gender: gender,
      email: email,
      mobileNo: mobileNo?.toDomain(),
      emergencyContact: emergencyContact?.toDomain(),
      credit: credit?.toDomain()??Credit.guest(),
      requestDelete: requestDelete,
    );
  }
}
