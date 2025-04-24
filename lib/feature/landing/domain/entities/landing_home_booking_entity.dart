import 'package:equatable/equatable.dart';
import 'client_booking_entity.dart';
import 'upcoming_booking_entity.dart';

final class LandingHomeBookingEntity extends Equatable {
  const LandingHomeBookingEntity({
    required this.clientBookings,
    required this.upcomingBookings,
  });

  final List<ClientBookingEntity> clientBookings;
  final List<UpcomingBookingEntity> upcomingBookings;

  @override
  List<Object?> get props => [clientBookings, upcomingBookings];
}
