import 'package:app_for_santa/src/features/view_list/data/models/kid_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_form_state.dart';
part 'add_form_cubit.freezed.dart';

class AddFormCubit extends Cubit<AddFormState> {
  bool isNaughty = false;
  AddFormCubit() : super(const AddFormState.initial());

  late KidModel kidModel;

  emitNice() {
    emit(const AddFormState.initial());
    emit(const AddFormState.nice());
  }

  emitNaughty() {
    emit(const AddFormState.initial());
    emit(const AddFormState.naughty());
  }

}
