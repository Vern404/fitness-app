import 'dart:io';

import 'package:fpdart/fpdart.dart';

final class Response {
  const Response({
    required this.statusCode,
    this.statusMessage,
    this.data = const <String, dynamic>{},
    this.status,
    this.totalCount,
  });

  final int? statusCode;
  final String? statusMessage;
  final dynamic data;
  final String? status;
  final int? totalCount;

  @override
  String toString() {
    return 'status=$status\nstatusCode=$statusCode\n'
        'statusMessage=$statusMessage\n data=$data\n totalCount=$totalCount';
  }
}

extension ResponseExtension on Response {
  Right<HttpException, Response> get toRight => Right(this);
}
