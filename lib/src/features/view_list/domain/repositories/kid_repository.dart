import 'package:app_for_santa/src/features/view_list/data/models/kid_model.dart';

abstract class KidRepository {
  List<KidModel> getKidList();
  List<KidModel> addKid(KidModel kidModel);
  List<KidModel> toggleNaughty(int index);
}
