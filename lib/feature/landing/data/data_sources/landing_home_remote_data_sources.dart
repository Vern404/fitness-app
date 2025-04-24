import 'package:interview/feature/landing/data/mock_data/booking_mock_data.dart';

import '../../../../configs/network/network_either.dart';
import '../../../../configs/network/network_error_catcher.dart';
import '../../../../configs/network/network_exception.dart';
import '../models/landing_home_booking_response.dart';
import '../models/landing_home_upcoming_booking_response.dart';

abstract interface class LandingHomeRemoteDataSource {
  Future<Either<AppException, ClientBookingResponse>> getClientBookingList();

  Future<Either<AppException, UpcomingBookingResponse>>
  getUpcomingBookingList();
}

final class LandingHomeRemoteDataSourceImpl
    implements LandingHomeRemoteDataSource {
  const LandingHomeRemoteDataSourceImpl();

  @override
  Future<Either<AppException, ClientBookingResponse>> getClientBookingList() {
    return NetworkErrorCatcher.catchErrors<ClientBookingResponse>(
      mockHandler: () async {
        return Right(ClientBookingResponse.fromJson(clientMockData));
      },
      handler: () async => throw UnimplementedError(),
      identifier: 'LandingHomeRemoteDataSourceImpl.getClientBookingList',
    );
  }

  @override
  Future<Either<AppException, UpcomingBookingResponse>>
  getUpcomingBookingList() {
    return NetworkErrorCatcher.catchErrors<UpcomingBookingResponse>(
      mockHandler: () async {
        return Right(UpcomingBookingResponse.fromJson(upcomingMockData));
      },
      handler: () async => throw UnimplementedError(),
      identifier: 'LandingHomeRemoteDataSourceImpl.getUpcomingBookingList',
    );
  }
}
