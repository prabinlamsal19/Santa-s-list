import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_kid_state.dart';
part 'add_kid_cubit.freezed.dart';

@injectable
class AddKidCubit extends Cubit<AddKidState> {
  AddKidCubit() : super(const AddKidState.initial());
}
