import 'package:ifit/domain/entities/bank_account/bank_options_entity.dart';

class BankOptionsJson {
  String? value;
  String? label;
  String? group;

  BankOptionsJson({this.value, this.label, this.group});

  BankOptionsJson.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    label = json['label'];
    group = json['group'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    data['label'] = label;
    data['group'] = group;
    return data;
  }

  BankOptionsEntity toDomain() {
    return BankOptionsEntity(
      value: value ?? '',
      label: label ?? '',
      group: group ?? '',
    );
  }
}
