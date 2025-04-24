import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:interview/feature/landing/data/data_sources/landing_home_remote_data_sources.dart';
import 'package:interview/feature/landing/presentation/manager/landing_home_notifier.dart';
import 'data/repository/landing_home_repository_impl.dart';
import 'domain/repositories/landing_home_repository.dart';
import 'domain/use_cases/fetch_client_booking_list.dart';
import 'domain/use_cases/fetch_upcoming_booking_list.dart';

final landingRemoteDataSourceProvider = Provider<LandingHomeRemoteDataSource>((
  ref,
) {
  return LandingHomeRemoteDataSourceImpl();
});

// Repositories
final landingHomeRepositoryProvider = Provider<LandingHomeRepository>((ref) {
  final bookingRemoteDataSource = ref.watch(landingRemoteDataSourceProvider);

  return LandingHomeRepositoryImpl(
    bookingRemoteDataSource: bookingRemoteDataSource,
  );
});

// Use Cases
final fetchClientBookingListUseCaseProvider = Provider((ref) {
  return FetchClientBookingListUseCase(
    ref.watch(landingHomeRepositoryProvider),
  );
});

final fetchUpcomingBookingListUseCaseProvider = Provider((ref) {
  return FetchUpcomingBookingListUseCase(
    ref.watch(landingHomeRepositoryProvider),
  );
});

// Notifiers
final landingHomeNotifierProvider =
    StateNotifierProvider<LandingHomeNotifier, LandingHomeState>(
      (ref) => LandingHomeNotifier(ref.watch(landingHomeRepositoryProvider)),
    );
