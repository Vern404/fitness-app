import 'package:equatable/equatable.dart';

import 'network_exception.dart';

/// Class for handling failure
abstract base class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

/// Server failure implementation
final class ServerFailure extends Failure {
  /// Constructor
  ServerFailure({
    required this.code,
    required this.message,
    required this.errorCode,
  });

  /// Remapping from http exception value
  factory ServerFailure.fromException(AppException ex) => ServerFailure(
    code: ex.statusCode ?? -1,
    message: ex.message ?? '',
    errorCode: ex.errorCode ?? '',
  );

  /// failure status code
  final int code;

  /// failure message
  final String message;

  /// failure error code
  final String errorCode;

  @override
  String toString() {
    return 'code=$code\nmessage=$message\nerrorCode=$errorCode';
  }
}

/// Local storage implementation
final class LocalStorageFailure extends Failure {}
