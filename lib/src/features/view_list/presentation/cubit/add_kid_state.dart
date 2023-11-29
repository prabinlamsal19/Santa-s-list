part of 'add_kid_cubit.dart';

@freezed
class AddKidState with _$AddKidState {
  const factory AddKidState.initial() = _Initial; 
  const factory AddKidState.empty() = _Empty; 
  const factory AddKidState.success({required KidModel kidModel}) = _Success;
}
