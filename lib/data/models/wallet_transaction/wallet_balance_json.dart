import 'package:ifit/domain/entities/wallet_transaction/wallet_balance_entity.dart';

class WalletBalanceJson {
  const WalletBalanceJson({
    required this.id,
    required this.type,
    required this.balance,
    required this.currency,
  });

  final String? id;
  final String? type;
  final String? balance;
  final String? currency;

  factory WalletBalanceJson.fromJson(Map<String, dynamic> json) {
    return WalletBalanceJson(
      id: json['id'] as String?,
      type: json['type'] as String?,
      balance: json['balance'] as String?,
      currency: json['currency'] as String?,
    );
  }

  WalletBalanceEntity toDomain() {
    return WalletBalanceEntity(
      id: id ?? '',
      type: type ?? '',
      balance: balance ?? '',
      currency: currency ?? '',
    );
  }

  List<Object?> get props => [id, type, balance, currency];
}
