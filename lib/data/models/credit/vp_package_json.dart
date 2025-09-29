
import '../../../domain/entities/credit/vp_package.dart';

class VpPackageJson {
  String? id;
  String? name;
  String? currency;
  String? price;
  String? credits;
  String? bonusCredits;
  int? status;

  VpPackageJson({
    this.id,
    this.name,
    this.currency,
    this.price,
    this.credits,
    this.bonusCredits,
    this.status,
  });

  VpPackageJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    currency = json['currency'];
    price = json['price'];
    credits = json['credits'];
    bonusCredits = json['bonusCredits'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['currency'] = currency;
    data['price'] = price;
    data['credits'] = credits;
    data['bonusCredits'] = bonusCredits;
    data['status'] = status;
    return data;
  }

  VpPackage toDomain() {
    return VpPackage(
      id: id,
      name: name,
      currency: currency,
      price: double.tryParse(price??"0.00")??0,
      credits: int.tryParse(credits??"0")??0,
      bonusCredits: int.tryParse(bonusCredits??"0")??0,
      status: status,
    );
  }
}
