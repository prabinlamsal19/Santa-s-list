import 'package:app_for_santa/src/core/di/injector.dart';
import 'package:app_for_santa/src/features/view_list/domain/repositories/kid_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/kid_model.dart';

part 'add_kid_state.dart';
part 'add_kid_cubit.freezed.dart';

@injectable
class AddKidCubit extends Cubit<AddKidState> {
  AddKidCubit(this.kidRepository)
      : super(AddKidState.initial(kidList: kidRepository.getKidList()));
  final KidRepository kidRepository;

  getKidList() {
    emit(const AddKidState.load());
    emit(AddKidState.initial(kidList: kidRepository.getKidList()));
  }

  addKid(KidModel newKid) {
    emit(const AddKidState.load());
    final List<KidModel> updatedList = kidRepository.addKid(newKid);
    emit(AddKidState.initial(kidList: updatedList));
  }

  toggleNaughty({required index}) {
    emit(const AddKidState.load());
    emit(AddKidState.initial(kidList: kidRepository.toggleNaughty(index)));
  }
}
