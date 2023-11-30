import 'package:freezed_annotation/freezed_annotation.dart';

part 'kid_model.freezed.dart';

@freezed
class KidModel with _$KidModel {
  factory KidModel({ 
    required int index,
    required String name,
    required String country,
    required bool isNaughty,
  }) = _KidModel;
}
