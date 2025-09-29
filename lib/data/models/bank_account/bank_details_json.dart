import 'package:ifit/domain/entities/bank_account/bank_details_entity.dart';

class BankDetailsJson {
  BankDetailsJson({
    this.id,
    this.accountNo,
    this.accountName,
    this.bankId,
    this.bankCode,
    this.bankName,
    this.countryCode,
    this.swiftCode,
    this.primary,
    this.status,
    this.isActive,
  });

  String? id;
  String? accountNo;
  String? accountName;
  String? bankId;
  String? bankCode;
  String? bankName;
  String? countryCode;
  num? swiftCode;
  bool? primary;
  num? status;
  bool? isActive;

  factory BankDetailsJson.fromJson(Map<String, dynamic> json) {
    return BankDetailsJson(
      id: json["id"],
      accountNo: json["accountNo"],
      accountName: json["accountName"],
      bankId: json["bankId"],
      bankCode: json["bankCode"],
      bankName: json["bankName"],
      countryCode: json["countryCode"],
      swiftCode: json["swiftCode"],
      primary: json["primary"],
      status: json["status"],
      isActive: json["isActive"],
    );
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
    data['swiftCode'] = swiftCode;
    data['primary'] = primary;
    data['status'] = status;
    data['isActive'] = isActive;
    return data;
  }


  /// Converts [BankDetailsJson] to [BankDetailsEntity]
  BankDetailsEntity toDomain() {
    return BankDetailsEntity(
      id: id ?? '',
      accountNo: accountNo ?? '',
      accountName: accountName ?? '',
      bankId: bankId ?? '',
      bankCode: bankCode ?? '',
      bankName: bankName ?? '',
      countryCode: countryCode ?? '',
      swiftCode: swiftCode ?? 0,
      primary: primary ?? false,
      status: status ?? 0,
      isActive: isActive ?? false,
    );
  }
}
