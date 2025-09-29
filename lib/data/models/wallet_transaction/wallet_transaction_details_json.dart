import 'package:ifit/data/models/wallet_transaction/bank_account_to_json.dart';
import 'package:ifit/domain/entities/wallet_transaction/wallet_transaction_details.dart';

class WalletTransactionDetailsJson {
  WalletTransactionDetailsJson({
    this.id,
    this.transactionNo,
    this.type,
    this.status,
    this.statusLabel,
    this.typeLabel,
    this.amount,
    this.currency,
    this.remark,
    this.memberName,
    this.instructorName,
    this.isWithdrawalPending,
    this.equipmentTypeName,
    this.equipmentPrivacy,
    this.equipmentCode,
    this.bankAcctFrom,
    this.bankAcctTo,
    this.startAt,
    this.endAt,
    this.rejectedAt,
    this.approvedAt,
    this.createdAt,
    this.studioName,
    this.studioAddress,
  });

  String? id;
  String? transactionNo;
  String? type;
  num? status;
  String? statusLabel;
  String? typeLabel;
  String? amount;
  String? currency;
  String? remark;
  String? memberName;
  String? instructorName;
  bool? isWithdrawalPending;
  String? equipmentTypeName;
  num? equipmentPrivacy;
  String? equipmentCode;
  BankAccountToJson? bankAcctFrom;
  BankAccountToJson? bankAcctTo;
  String? startAt;
  String? endAt;
  String? rejectedAt;
  String? approvedAt;
  String? createdAt;
  String? studioName;
  String? studioAddress;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['transactionNo'] = transactionNo;
    data['type'] = type;
    data['status'] = status;
    data['statusLabel'] = statusLabel;
    data['typeLabel'] = typeLabel;
    data['amount'] = amount;
    data['currency'] = currency;
    data['remark'] = remark;
    data['memberName'] = memberName;
    data['instructorName'] = instructorName;
    data['isWithdrawalPending'] = isWithdrawalPending;
    data['equipmentTypeName'] = equipmentTypeName;
    data['equipmentPrivacy'] = equipmentPrivacy;
    data['equipmentCode'] = equipmentCode;
    data['bankAcctFrom'] = bankAcctFrom;
    data['bankAcctTo'] = bankAcctTo;
    data['startAt'] = startAt;
    data['endAt'] = endAt;
    data['rejectedAt'] = rejectedAt;
    data['approvedAt'] = approvedAt;
    data['createdAt'] = createdAt;
    data['studioName'] = studioName;
    data['studioAddress'] = studioName;
    return data;
  }

  WalletTransactionDetailsJson.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    transactionNo = json["transactionNo"];
    type = json["type"];
    status = json["status"];
    statusLabel = json["statusLabel"];
    typeLabel = json["typeLabel"];
    amount = json["amount"];
    currency = json["currency"];
    remark = json["remark"];
    memberName = json["memberName"];
    instructorName = json["instructorName"];
    isWithdrawalPending = json["isWithdrawalPending"];
    equipmentTypeName = json["equipmentTypeName"];
    equipmentPrivacy = json["equipmentPrivacy"];
    equipmentCode = json["equipmentCode"];
    bankAcctFrom =
        json['bankAcctFrom'] != null
            ? BankAccountToJson.fromJson(json['bankAcctFrom'])
            : null;
    bankAcctTo =
        json['bankAcctTo'] != null
            ? BankAccountToJson.fromJson(json['bankAcctTo'])
            : null;
    startAt = json["startAt"];
    endAt = json["endAt"];
    rejectedAt = json["rejectedAt"];
    approvedAt = json["approvedAt"];
    createdAt = json["createdAt"];
    studioName = json['studioName'];
    studioAddress = json['studioAddress'];
  }

  WalletTransactionDetails toDomain() {
    return WalletTransactionDetails(
      id: id ?? '',
      transactionNo: transactionNo ?? '',
      type: type ?? '',
      status: (status ?? 0).toInt(),
      statusLabel: statusLabel ?? '',
      typeLabel: typeLabel ?? '',
      amount: amount ?? '',
      currency: currency ?? '',
      remark: remark ?? '',
      instructorName: instructorName ?? '',
      equipmentTypeName: equipmentTypeName ?? '',
      equipmentPrivacy: (equipmentPrivacy ?? 0).toInt(),
      equipmentCode: equipmentCode ?? '',
      isWithdrawalPending: isWithdrawalPending ?? false,
      bankAcctFrom: bankAcctFrom?.toDomain(),
      bankAcctTo: bankAcctTo?.toDomain(),
      startAt: DateTime.tryParse(startAt ?? ''),
      endAt: DateTime.tryParse(endAt ?? ''),
      rejectedAt: DateTime.tryParse(rejectedAt ?? ''),
      approvedAt: DateTime.tryParse(approvedAt ?? ''),
      createdAt: DateTime.tryParse(createdAt ?? ''),
      memberName: memberName ?? '',
      studioName: studioName ?? '',
      studioAddress: studioAddress ?? '',
    );
  }
}
