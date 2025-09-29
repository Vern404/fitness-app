import '../../../domain/entities/booking/booking_count.dart';

class BookingCountJson {
  int? bookings;
  int? sessions;

  BookingCountJson({
    this.bookings,
    this.sessions,
  });

  BookingCountJson.fromJson(Map<String, dynamic> json) {
    bookings = json['bookings'];
    sessions = json['sessions'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bookings'] = bookings;
    data['sessions'] = sessions;
    return data;
  }

  BookingCount toDomain() {
    return BookingCount(
      bookings: bookings??0,
      sessions: sessions??0,
    );
  }
}