import 'package:ifit/domain/entities/credit/credit.dart';

import '../../../core/extensions/dynamic_extensions.dart';

class CreditJson {
  String? memberId;
  String? currentCredits;
  String? creditExpiredDate; // Keep as String, or parse to DateTime if needed
  int? notifiedExpired;

  CreditJson({
    this.memberId,
    this.currentCredits,
    this.creditExpiredDate,
    this.notifiedExpired,
  });

  CreditJson.fromJson(Map<String, dynamic> json) {
    memberId = json['memberId'];
    currentCredits = json['currentCredits'];
    creditExpiredDate = json['creditExpiredDate']; // Can be null
    notifiedExpired = json['notifiedExpired'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['memberId'] = memberId;
    data['currentCredits'] = currentCredits;
    data['creditExpiredDate'] = creditExpiredDate;
    data['notifiedExpired'] = notifiedExpired;
    return data;
  }

  Credit toDomain() {
    return Credit(
      memberId: memberId,
      currentCredits: toInt(currentCredits),
      creditExpiredDate: DateTime.tryParse(creditExpiredDate??""), // Keep as String, or parse here
      notifiedExpired: notifiedExpired,
    );
  }
}
