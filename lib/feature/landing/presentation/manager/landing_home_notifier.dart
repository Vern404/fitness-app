import 'package:equatable/equatable.dart';
import 'package:riverpod/riverpod.dart';
import '../../../../configs/constants/app_enum.dart';
import '../../../../configs/network/netwotrk_failure.dart';
import '../../domain/entities/client_booking_entity.dart';
import '../../domain/entities/upcoming_booking_entity.dart';
import '../../domain/repositories/landing_home_repository.dart';

part 'landing_home_state.dart';

final class LandingHomeNotifier extends StateNotifier<LandingHomeState> {
  LandingHomeNotifier(this._repository) : super(const LandingHomeState());

  final LandingHomeRepository _repository;

  Future<void> loadClientBookings() async {
    state = state.copyWith(clientState: BaseState.loading);

    final response = await _repository.fetchClientBookingList();

    response.fold(
      (failure) =>
          state = state.copyWith(
            clientState: BaseState.failure,
            clientFailure: failure,
          ),
      (data) =>
          state = state.copyWith(
            clientState: BaseState.loaded,
            clientBookings: data,
          ),
    );
  }

  Future<void> loadUpcomingBookings() async {
    state = state.copyWith(upcomingState: BaseState.loading);

    final response = await _repository.fetchUpcomingBookingList();

    response.fold(
      (failure) =>
          state = state.copyWith(
            upcomingState: BaseState.failure,
            upcomingFailure: failure,
          ),
      (data) =>
          state = state.copyWith(
            upcomingState: BaseState.loaded,
            upcomingBookings: data,
          ),
    );
  }
}
