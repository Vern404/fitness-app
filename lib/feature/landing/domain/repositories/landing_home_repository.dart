import 'package:interview/feature/landing/domain/entities/upcoming_booking_entity.dart';

import '../../../../configs/network/network_either.dart';
import '../../../../configs/network/netwotrk_failure.dart';
import '../entities/client_booking_entity.dart';

abstract interface class LandingHomeRepository {
  Future<Either<Failure, List<ClientBookingEntity>>> fetchClientBookingList();

  Future<Either<Failure, List<UpcomingBookingEntity>>> fetchUpcomingBookingList();
}
