import 'package:ifit/domain/entities/ad_hoc/search_member_entity.dart';

class AdHocMemberJson {
  String? id;
  String? fullName;
  String? email;
  String? displayName;

  AdHocMemberJson({this.id, this.fullName, this.displayName, this.email});

  AdHocMemberJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    email = json['email'];
    displayName = json['displayName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['fullName'] = fullName;
    data['email'] = email;
    data['displayName'] = displayName;
    return data;
  }

  AdHocMemberEntity toDomain() {
    return AdHocMemberEntity(
      id: id ?? '',
      fullName: fullName ?? '',
      email: email ?? '',
      displayName: displayName ?? '',
    );
  }
}
