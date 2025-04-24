part of 'landing_home_notifier.dart';

final class LandingHomeState extends Equatable {
  const LandingHomeState({
    this.clientBookings = const [],
    this.upcomingBookings = const [],
    this.clientState = BaseState.initial,
    this.upcomingState = BaseState.initial,
    this.clientFailure,
    this.upcomingFailure,
  });

  final List<ClientBookingEntity> clientBookings;
  final List<UpcomingBookingEntity> upcomingBookings;
  final BaseState clientState;
  final BaseState upcomingState;
  final Failure? clientFailure;
  final Failure? upcomingFailure;

  LandingHomeState copyWith({
    List<ClientBookingEntity>? clientBookings,
    List<UpcomingBookingEntity>? upcomingBookings,
    BaseState? clientState,
    BaseState? upcomingState,
    Failure? clientFailure,
    Failure? upcomingFailure,
  }) {
    return LandingHomeState(
      clientBookings: clientBookings ?? this.clientBookings,
      upcomingBookings: upcomingBookings ?? this.upcomingBookings,
      clientState: clientState ?? this.clientState,
      upcomingState: upcomingState ?? this.upcomingState,
      clientFailure: clientFailure ?? this.clientFailure,
      upcomingFailure: upcomingFailure ?? this.upcomingFailure,
    );
  }

  @override
  List<Object?> get props => [
    clientBookings,
    upcomingBookings,
    clientState,
    upcomingState,
    clientFailure,
    upcomingFailure,
  ];
}
