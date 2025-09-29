import '../../../domain/entities/booking/booking_refund.dart';

class BookingRefundJson {
  String? token;
  bool? free;

  BookingRefundJson({
    this.token,
    this.free,
  });

  BookingRefundJson.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    free = json['free'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['free'] = free;
    return data;
  }

  BookingRefund toDomain() {
    return BookingRefund(
      token: token,
      free: free,
    );
  }
}