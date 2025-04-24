import '../../../../configs/network/network_either.dart';
import '../../../../configs/network/netwotrk_failure.dart';
import '../entities/client_booking_entity.dart';
import '../repositories/landing_home_repository.dart';

class FetchClientBookingListUseCase {
  final LandingHomeRepository repository;

  FetchClientBookingListUseCase(this.repository);

  Future<Either<Failure, List<ClientBookingEntity>>> call() {
    return repository.fetchClientBookingList();
  }
}
