import 'package:interview/feature/landing/domain/entities/client_booking_entity.dart';
import 'package:interview/feature/landing/domain/entities/upcoming_booking_entity.dart';
import '../../../../configs/network/network_either.dart';
import '../../../../configs/network/netwotrk_failure.dart';
import '../../domain/repositories/landing_home_repository.dart';
import '../data_sources/landing_home_remote_data_sources.dart';

final class LandingHomeRepositoryImpl implements LandingHomeRepository {
  const LandingHomeRepositoryImpl({required this.bookingRemoteDataSource});

  final LandingHomeRemoteDataSource bookingRemoteDataSource;

  @override
  Future<Either<Failure, List<ClientBookingEntity>>>
  fetchClientBookingList() async {
    final response = await bookingRemoteDataSource.getClientBookingList();

    return response.fold((l) => Left(ServerFailure.fromException(l)),(r) {
      final list = r.datas.map((e) => ClientBookingEntity(
        name: e.name ?? '',
        programme: e.programme ?? '',
        location: e.location ?? '',
      )).toList();
      return Right(list);
    });
  }

  @override
  Future<Either<Failure, List<UpcomingBookingEntity>>>
  fetchUpcomingBookingList() async {
    final response = await bookingRemoteDataSource.getUpcomingBookingList();

    return response.fold((l) => Left(ServerFailure.fromException(l)), (r) {
      final list = r.datas.map((e) => UpcomingBookingEntity(
        instructor: e.instructor ?? '',
        programme: e.programme ?? '',
        location: e.location ?? '',
      )).toList();

      return Right(list);
    });
  }
}
