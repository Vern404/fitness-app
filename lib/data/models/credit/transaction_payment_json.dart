import 'package:ifit/domain/entities/credit/transaction_payment.dart';

class TransactionPaymentJson {
  String? amount;
  String? currency;

  TransactionPaymentJson({this.amount, this.currency});

  TransactionPaymentJson.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amount'] = amount;
    data['currency'] = currency;
    return data;
  }

  TransactionPayment toDomain() {
    return TransactionPayment(
      amount: double.tryParse(amount ?? "0.0"),
      currency: currency,
    );
  }
}
