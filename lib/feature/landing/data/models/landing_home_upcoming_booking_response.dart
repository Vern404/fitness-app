final class UpcomingBookingResponse {
  const UpcomingBookingResponse({
    required this.datas,
    required this.totalData,
  });

  factory UpcomingBookingResponse.fromJson(dynamic data) =>
      UpcomingBookingResponse(
        datas: List<UpcomingBookingData>.from(
          (((data as Map<String, dynamic>)['data'] as List<dynamic>?) ?? [])
              .map(
                (x) => UpcomingBookingData.fromJson(x as Map<String, dynamic>),
          ),
        ),
        totalData: data['count'] as int?,
      );

  final List<UpcomingBookingData> datas;
  final int? totalData;
}

final class UpcomingBookingData {
  const UpcomingBookingData({
    required this.instructor,
    required this.programme,
    required this.location,
  });

  factory UpcomingBookingData.fromJson(Map<String, dynamic> json) =>
      UpcomingBookingData(
        instructor: json['instructor'] as String?,
        programme: json['programme'] as String?,
        location: json['location'] as String?,
      );

  final String? instructor;
  final String? programme;
  final String? location;
}
