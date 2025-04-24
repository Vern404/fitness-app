// import 'dart:developer';
//
// import '../utils/config_reader.dart';
import 'network_either.dart';
import 'network_exception.dart';

final class NetworkErrorCatcher {
  NetworkErrorCatcher._();

  static Future<Either<AppException, T>> catchErrors<T>({
    required Future<Either<AppException, T>> Function() handler,
    required String identifier,
    Future<Either<AppException, T>> Function()? mockHandler,
  }) async {
    // if (ConfigReader.mockMode) {
      if (mockHandler == null) {
        return Left(
          AppException(
            message: 'Mock handler is not provided',
            statusCode: 1,
            errorCode: '1',
            identifier: identifier,
          ),
        );
      }

      await Future<void>.delayed(const Duration(milliseconds: 500));

      return mockHandler.call();
    // } else {
    //   try {
    //     return await handler();
    //   } catch (e) {
    //     log('$e\n$identifier', name: 'Network Catcher Error');
    //
    //     return Left(
    //       AppException(
    //         message: 'Unknown error occurred',
    //         statusCode: 1,
    //         errorCode: '1',
    //         identifier: '$e\n$identifier',
    //       ),
    //     );
    //   }
    // }
  }
}
