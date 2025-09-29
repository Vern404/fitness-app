import 'package:ifit/data/models/wallet_transaction/bank_account_to_json.dart';
import 'package:ifit/domain/entities/wallet_transaction/wallet_transaction_list_entity.dart';

class WalletTransactionJson {
  String? id;
  String? transactionNo;
  String? type;
  num? status;
  String? statusLabel;
  String? typeLabel;
  String? amount;
  String? currency;
  String? remark;
  String? instructorName;
  String? studioName;
  String? equipmentTypeName;
  num? equipmentPrivacy;
  String? equipmentCode;
  bool? isWithdrawalPending;
  String? bankAcctFrom;
  BankAccountToJson? bankAcctTo;
  String? startAt;
  String? endAt;
  String? rejectedAt;
  String? approvedAt;
  String? createdAt;

  WalletTransactionJson({
    this.id,
    this.transactionNo,
    this.type,
    this.status,
    this.statusLabel,
    this.typeLabel,
    this.amount,
    this.currency,
    this.remark,
    this.instructorName,
    this.studioName,
    this.equipmentTypeName,
    this.equipmentPrivacy,
    this.equipmentCode,
    this.isWithdrawalPending,
    this.bankAcctFrom,
    this.bankAcctTo,
    this.startAt,
    this.endAt,
    this.rejectedAt,
    this.approvedAt,
    this.createdAt,
  });

  WalletTransactionJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    transactionNo = json['transactionNo'];
    type = json['type'];
    status = json['status'];
    statusLabel = json['statusLabel'];
    typeLabel = json['typeLabel'];
    amount = json['amount'];
    currency = json['currency'];
    remark = json['remark'];
    instructorName = json['instructorName'];
    studioName = json['studioName'];
    equipmentTypeName = json['equipmentTypeName'];
    equipmentPrivacy = json['equipmentPrivacy'];
    equipmentCode = json['equipmentCode'];
    isWithdrawalPending = json['isWithdrawalPending'];
    bankAcctFrom = json['bankAcctFrom'];
    bankAcctTo =
        json['bankAcctTo'] != null
            ? BankAccountToJson.fromJson(json['bankAcctTo'])
            : null;
    startAt = json['startAt'];
    endAt = json['endAt'];
    rejectedAt = json['rejectedAt'];
    approvedAt = json['approvedAt'];
    createdAt = json['createdAt'];
  }

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
    data['instructorName'] = instructorName;
    data['studioName'] = studioName;
    data['equipmentTypeName'] = equipmentTypeName;
    data['equipmentPrivacy'] = equipmentPrivacy;
    data['equipmentCode'] = equipmentCode;
    data['isWithdrawalPending'] = isWithdrawalPending;
    data['bankAcctFrom'] = bankAcctFrom;
    data['bankAcctTo'] = bankAcctTo;
    data['startAt'] = startAt;
    data['endAt'] = endAt;
    data['rejectedAt'] = rejectedAt;
    data['approvedAt'] = approvedAt;
    data['createdAt'] = createdAt;
    return data;
  }

  WalletTransactionList toDomain() {
    return WalletTransactionList(
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
      studioName: studioName ?? '',
      equipmentTypeName: equipmentTypeName ?? '',
      equipmentPrivacy: (equipmentPrivacy ?? 0).toInt(),
      equipmentCode: equipmentCode ?? '',
      isWithdrawalPending: isWithdrawalPending ?? false,
      bankAcctFrom: bankAcctFrom ?? '',
      bankAcctTo: bankAcctTo?.bankName ?? '',
      startAt: DateTime.tryParse(startAt ?? ''),
      endAt: DateTime.tryParse(endAt ?? ''),
      rejectedAt: DateTime.tryParse(rejectedAt ?? ''),
      approvedAt: DateTime.tryParse(approvedAt ?? ''),
      createdAt: DateTime.tryParse(createdAt ?? ''),
    );
  }
}
