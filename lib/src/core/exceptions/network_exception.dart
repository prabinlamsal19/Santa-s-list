import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException implements Exception {
  /// API call failed with some response from Server.
  const factory NetworkException.response(String message) = _Response;

  /// Failed to connect due to connection issue.
  const factory NetworkException.connection() = _Connection;

  /// Timeout failure.
  const factory NetworkException.timeout() = _Timeout;

  /// Unknown exception that are unhandled.
  const factory NetworkException.unexpected() = _Unexpected;
}
