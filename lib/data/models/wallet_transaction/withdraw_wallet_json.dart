import 'package:ifit/domain/entities/wallet_transaction/withdraw_wallet_entity.dart';

class WithdrawWalletJson {
  WithdrawWalletJson({
    this.typeLabel,
    this.statusLabel,
    this.isWithdrawalPending,
    this.isCompleted,
    this.id,
    this.status,
    this.type,
    this.amount,
    this.entityType,
    this.entityId,
    this.currency,
    this.transactionNo,
    this.updatedAt,
    this.createdAt,
    this.createdBy,
    this.updatedBy,
  });

  String? typeLabel;
  String? statusLabel;
  bool? isWithdrawalPending;
  bool? isCompleted;
  String? id;
  String? status;
  String? type;
  String? amount;
  String? entityType;
  String? entityId;
  String? currency;
  String? transactionNo;
  String? updatedAt;
  String? createdAt;
  String? createdBy;
  String? updatedBy;

  WithdrawWalletJson.fromJson(Map<String, dynamic> json) {
    typeLabel = json['typeLabel'];
    statusLabel = json['statusLabel'];
    isWithdrawalPending = json['isWithdrawalPending'];
    isCompleted = json['isCompleted'];
    id = json['id'];
    status = json['status'];
    type = json['type'];
    amount = json['amount'];
    entityType = json['entityType'];
    entityId = json['entityId'];
    currency = json['currency'];
    transactionNo = json['transactionNo'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['typeLabel'] = typeLabel;
    data['statusLabel'] = statusLabel;
    data['isWithdrawalPending'] = isWithdrawalPending;
    data['isCompleted'] = isCompleted;
    data['id'] = id;
    data['status'] = status;
    data['type'] = type;
    data['amount'] = amount;
    data['entityType'] = entityType;
    data['entityId'] = entityId;
    data['currency'] = currency;
    data['transactionNo'] = transactionNo;
    data['updatedAt'] = updatedAt;
    data['createdAt'] = createdAt;
    data['createdBy'] = createdBy;
    data['updatedBy'] = updatedBy;
    return data;
  }

  WithdrawWalletEntity toDomain() {
    return WithdrawWalletEntity(
      id: id ?? '',
      transactionNo: transactionNo ?? '',
      type: type ?? '',
      status: status ?? '',
      statusLabel: statusLabel ?? '',
      typeLabel: typeLabel ?? '',
      amount: amount ?? '',
      currency: currency ?? '',
      isWithdrawalPending: isWithdrawalPending ?? false,
      isCompleted: isCompleted ?? false,
      entityType: entityType ?? '',
      entityId: entityId ?? '',
      updatedAt: DateTime.tryParse(updatedAt ?? ''),
      createdAt: DateTime.tryParse(createdAt ?? ''),
      createdBy: createdBy ?? '',
      updatedBy: updatedBy ?? '',
    );
  }
}
