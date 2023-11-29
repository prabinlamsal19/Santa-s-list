import 'package:freezed_annotation/freezed_annotation.dart';

import 'network_exception.dart';

part 'xception.freezed.dart';

@freezed
class Xception with _$Xception implements Exception {
  const Xception._();

  /// Exception from Network calls.
  const factory Xception.network(NetworkException exception) = _XceptionNetwork;

  const factory Xception.other(Object error) = _Other;

  /// Converts Object into useful [Xception].
  factory Xception.from(Object error) {
    // error is not Exception so it is some object.
    if (error is! Exception) return Xception.other(error);

    // error is NetworkException which implements Exception.
    if (error is NetworkException) {
      return Xception.network(
        error.when(
          response: (e) => NetworkException.response(e),
          connection: () => const NetworkException.connection(),
          timeout: () => const NetworkException.timeout(),
          unexpected: () => const NetworkException.unexpected(),
        ),
      );
    }

    if (error is Xception) return error;

    return Xception.other(error);
  }
}
