import 'package:ifit/domain/entities/bank_account/bank_list_entity.dart';

class BankItemJson {
  String? id;
  String? accountNo;
  String? accountName;
  String? bankId;
  String? bankCode;
  String? bankName;
  String? countryCode;
  bool? primary;
  int? status;
  bool? isActive;

  BankItemJson({
    this.id,
    this.accountNo,
    this.accountName,
    this.bankId,
    this.bankCode,
    this.bankName,
    this.countryCode,
    this.primary,
    this.status,
    this.isActive,
  });

  BankItemJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    accountNo = json['accountNo'];
    accountName = json['accountName'];
    bankId = json['bankId'];
    bankCode = json['bankCode'];
    bankName = json['bankName'];
    countryCode = json['countryCode'];
    primary = json['primary'];
    status = json['status'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['accountNo'] = accountNo;
    data['accountName'] = accountName;
    data['bankId'] = bankId;
    data['bankCode'] = bankCode;
    data['bankName'] = bankName;
    data['countryCode'] = countryCode;
    data['primary'] = primary;
    data['status'] = status;
    data['isActive'] = isActive;
    return data;
  }

  BankListEntity toDomain() {
    return BankListEntity(
      id: id ?? '',
      accountNo: accountNo ?? '',
      accountName: accountName ?? '',
      bankId: bankId ?? '',
      bankCode: bankCode ?? '',
      bankName: bankName ?? '',
      countryCode: countryCode ?? '',
      primary: primary ?? false,
      status: status ?? 0,
      isActive: isActive ?? false,
    );
  }
}
