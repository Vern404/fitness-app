import 'package:ifit/domain/entities/wallet_transaction/wallet_bank_list_entity.dart';

class WalletBankListJson {
  String? value;
  String? label;
  bool? primary;

  WalletBankListJson({this.value, this.label, this.primary});

  WalletBankListJson.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    label = json['label'];
    primary = json['primary'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    data['label'] = label;
    data['primary'] = primary;
    return data;
  }

  WalletBankListEntity toDomain() {
    return WalletBankListEntity(
      value: value ?? '',
      label: label ?? '',
      primary: primary ?? false,
    );
  }
}
