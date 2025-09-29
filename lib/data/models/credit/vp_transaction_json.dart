import 'package:ifit/core/enums/transaction_status.dart';
import 'package:ifit/core/enums/transaction_type.dart';
import 'package:ifit/data/models/booking/booking_json.dart';
import 'package:ifit/data/models/credit/transaction_payment_json.dart';
import 'package:ifit/data/models/credit/vp_package_json.dart';
import 'package:ifit/feature/waitlist/data/model/waitlist_booking_json.dart';
import 'package:ifit/feature/waitlist/domain/entity/waiting_booking_mapper.dart';

import '../../../domain/entities/credit/vp_transaction.dart';

class VpTransactionJson {
  String? id;
  String? memberId;
  String? type;
  String? amount;
  String? status;
  String? transactionRef;
  String? paymentReqId;
  String? paymentId;
  String? packageId;
  VpPackageJson? package;
  TransactionPaymentJson? payment;
  BookingJson? booking;
  WaitlistBookingJson? waitlist;

  String? createdAt;

  VpTransactionJson({
    this.id,
    this.memberId,
    this.type,
    this.amount,
    this.status,
    this.transactionRef,
    this.paymentReqId,
    this.paymentId,
    this.packageId,
    this.package,
    this.payment,
    this.booking,
    this.waitlist,
    this.createdAt,
  });

  VpTransactionJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    memberId = json['memberId'];
    type = json['type'];
    amount = json['amount'];
    status = json['status'];
    transactionRef = json['transactionRef'];
    paymentReqId = json['paymentReqId'];
    paymentId = json['paymentId'];
    packageId = json['packageId'];
    package = json['package'] != null
        ? VpPackageJson.fromJson(json['package'])
        : null;
    payment = json['payment'] != null
        ? TransactionPaymentJson.fromJson(json['payment'])
        : null;
    booking = json['booking'] != null
        ? BookingJson.fromJson(json['booking'])
        : null;
    waitlist = json['waitlist'] != null
        ? WaitlistBookingJson.fromJson(json['waitlist'])
        : null;
    createdAt = json['createdAt'];
  }

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
    if (package != null) {
      data['package'] = package!.toJson();
    }
    if (payment != null) {
      data['payment'] = payment!.toJson();
    }
    if (booking != null) {
      data['booking'] = booking!.toJson();
    }
    if (waitlist != null) {
      data['waitlist'] = waitlist!.toJson();
    }
    data['createdAt'] = createdAt;
    return data;
  }

  VpTransaction toDomain() {
    return VpTransaction(
      id: id,
      memberId: memberId,
      type: TransactionType.fromString(type),
      amount: double.tryParse(amount ?? "0.0") ?? 0,
      status: TransactionStatus.fromString(status ?? ""),
      transactionRef: transactionRef,
      paymentReqId: paymentReqId,
      paymentId: paymentId,
      packageId: packageId,
      package: package?.toDomain(),
      payment: payment?.toDomain(),
      booking: booking?.toDomain(),
      waitlist: waitlist?.toEntity(),
      createdAt: DateTime.tryParse(createdAt ?? ""),
    );
  }
}
