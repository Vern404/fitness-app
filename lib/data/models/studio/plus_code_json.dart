import 'package:ifit/domain/entities/studio/plus_code.dart';

class PlusCodeJson {
  String? compoundCode;
  String? globalCode;

  PlusCodeJson({this.compoundCode, this.globalCode});

  PlusCodeJson.fromJson(Map<String, dynamic> json) {
    compoundCode = json['compound_code'];
    globalCode = json['global_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['compound_code'] = compoundCode;
    data['global_code'] = globalCode;
    return data;
  }

  PlusCode toDomain() {
    return PlusCode(compoundCode: compoundCode, globalCode: globalCode);
  }
}
