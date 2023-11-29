import 'package:freezed_annotation/freezed_annotation.dart';

import '../exceptions/xception.dart';

part 'form_status.freezed.dart';

@Freezed(map: FreezedMapOptions.none)
class FormStatus with _$FormStatus {
  const factory FormStatus.initial() = _Initial;

  const factory FormStatus.invalid() = _Invalid;

  const factory FormStatus.submitting() = _Submitting;

  const factory FormStatus.error({Xception? xception}) = _Error;

  const factory FormStatus.success({String? message}) = _Success;
}
