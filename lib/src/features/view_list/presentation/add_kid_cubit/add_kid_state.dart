part of 'add_kid_cubit.dart';

@freezed
class AddKidState with _$AddKidState {
  const factory AddKidState.initial({required List<KidModel> kidList}) =
      _Initial;
  const factory AddKidState.load() = _Load;
}
