import 'package:ifit/domain/entities/credit/vp_credit_promo_entity.dart';

class VpPromoCodeJson {
  VpPromoCodeJson({
    this.id,
    this.memberId,
    this.type,
    this.amount,
    this.status,
    this.transactionRef,
    this.paymentReqId,
    this.paymentId,
    this.packageId,
    this.remark,
    this.createdAt,
  });

  String? id;
  String? memberId;
  String? type;
  String? amount;
  String? status;
  String? transactionRef;
  String? paymentReqId;
  String? paymentId;
  String? packageId;
  String? remark;
  String? createdAt;

  /// Parse from JSON
  VpPromoCodeJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    memberId = json['memberId'];
    type = json['type'];
    amount = json['amount'];
    status = json['status'];
    transactionRef = json['transactionRef'];
    paymentReqId = json['paymentReqId'];
    paymentId = json['paymentId'];
    packageId = json['packageId'];
    remark = json['remark'];
    createdAt = json['createdAt'];
  }

  /// Convert to JSON map
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['memberId'] = memberId;
    data['type'] = type;
    data['amount'] = amount;
    data['status'] = status;
    data['transactionRef'] = transactionRef;
    data['paymentReqId'] = paymentReqId;
    data['paymentId'] = paymentId;
    data['packageId'] = packageId;
    data['remark'] = remark;
    data['createdAt'] = createdAt;
    return data;
  }

  /// Optional: Convert to domain entity
  VpPromoCodeEntity toDomain() {
    return VpPromoCodeEntity(
      id: id ?? '',
      memberId: memberId ?? '',
      type: type ?? '',
      amount: amount ?? '0.00',
      status: status ?? '',
      transactionRef: transactionRef ?? '',
      paymentReqId: paymentReqId ?? '',
      paymentId: paymentId ?? '',
      packageId: packageId ?? '',
      remark: remark ?? '',
      createdAt: createdAt ?? '',
    );
  }
}
