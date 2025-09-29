import '../../../domain/entities/booking/booking_fee.dart';

class BookingFeeJson {
  List<FeeItemJson>? items;
  String? total;
  String? currency;
  String? totalCredits;

  BookingFeeJson({this.items, this.total, this.currency, this.totalCredits});

  BookingFeeJson.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <FeeItemJson>[];
      json['items'].forEach((v) {
        items!.add(FeeItemJson.fromJson(v));
      });
    }
    total = json['total']?.toString();
    currency = json['currency'];
    totalCredits = json['totalCredits'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['total'] = total;
    data['currency'] = currency;
    data['totalCredits'] = totalCredits;
    return data;
  }

  BookingFee toDomain() {
    return BookingFee(
      items: items?.map((item) => item.toDomain()).toList(),
      total: total,
      currency: currency,
      totalCredits: int.tryParse(totalCredits??"0")??0,
    );
  }
}

class FeeItemJson {
  String? name;
  String? price;
  String? currency;
  String? sign;
  String? credit;

  FeeItemJson({this.name, this.price, this.currency, this.sign, this.credit});

  FeeItemJson.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price']?.toString();
    currency = json['currency'];
    sign = json['sign'];
    credit = json['credit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['price'] = price;
    data['currency'] = currency;
    data['sign'] = sign;
    data['credit'] = credit;
    return data;
  }

  FeeItem toDomain() {
    return FeeItem(
      name: name,
      price: price,
      currency: currency,
      sign: sign,
      credit: credit,
    );
  }
}
