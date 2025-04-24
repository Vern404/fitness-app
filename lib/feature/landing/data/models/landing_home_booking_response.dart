final class ClientBookingResponse {
  const ClientBookingResponse({
    required this.datas,
    required this.totalData, // Assuming there's a count or total data field, modify as needed
  });

  factory ClientBookingResponse.fromJson(dynamic data) =>
      ClientBookingResponse(
        datas: List<ClientBookingData>.from(
          (((data as Map<String, dynamic>)['data'] as List<dynamic>?) ?? [])
              .map(
                (x) => ClientBookingData.fromJson(x as Map<String, dynamic>),
          ),
        ),
        totalData: data['count'] as int?,
      );

  final List<ClientBookingData> datas;
  final int? totalData;
}

final class ClientBookingData {
  const ClientBookingData({
    required this.name,
    required this.programme,
    required this.location,
  });

  factory ClientBookingData.fromJson(Map<String, dynamic> json) =>
      ClientBookingData(
        name: json['name'] as String?,
        programme: json['programme'] as String?,
        location: json['location'] as String?,
      );

  final String? name;
  final String? programme;
  final String? location;
}
