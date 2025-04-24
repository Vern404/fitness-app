import '../../../../configs/network/network_either.dart';
import '../../../../configs/network/netwotrk_failure.dart';
import '../entities/upcoming_booking_entity.dart';
import '../repositories/landing_home_repository.dart';

class FetchUpcomingBookingListUseCase {
  final LandingHomeRepository repository;

  FetchUpcomingBookingListUseCase(this.repository);

  Future<Either<Failure, List<UpcomingBookingEntity>>> call() {
    return repository.fetchUpcomingBookingList();
  }
}
