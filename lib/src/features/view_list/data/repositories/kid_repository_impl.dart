import 'dart:core';

import 'package:app_for_santa/src/features/view_list/data/models/kid_model.dart';
import 'package:app_for_santa/src/features/view_list/domain/repositories/kid_repository.dart';
import 'package:injectable/injectable.dart';

import 'dart:core' as core;

@LazySingleton(as: KidRepository)
class KidRepositoryImpl implements KidRepository {
  KidRepositoryImpl();

  final List<KidModel> kidList = [
    KidModel(index: 0, name: 'Prabin', country: "Nepal", isNaughty: true),
    KidModel(index: 0, name: 'Mukt', country: "Nepal", isNaughty: false)
  ];
  @override
  List<KidModel> getKidList() {
    return kidList;
  }

  List<KidModel> addKid(KidModel kidModel) {
    kidList.add(kidModel);
    return kidList;
  }

  List<KidModel> toggleNaughty(int index) {
    final newEntry =
        kidList[index].copyWith(isNaughty: !kidList[index].isNaughty);
    kidList[index] = newEntry;
    return kidList;
  }
}
