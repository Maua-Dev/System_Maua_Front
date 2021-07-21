import 'package:mobx/mobx.dart';

part 'activities_store.g.dart';

class ActivitiesStore = ActivitiesStoreBase with _$ActivitiesStore;

abstract class ActivitiesStoreBase with Store {
  @observable
  int counter = 0;

  Future<void> increment() async {
    counter = counter + 1;
  }
}
