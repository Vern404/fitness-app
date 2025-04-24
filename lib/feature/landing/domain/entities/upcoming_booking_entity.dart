import 'package:equatable/equatable.dart';

final class UpcomingBookingEntity extends Equatable {
  const UpcomingBookingEntity({
    required this.instructor,
    required this.programme,
    required this.location,
  });

  final String instructor;
  final String programme;
  final String location;

  @override
  List<Object?> get props => [instructor, programme, location];
}
