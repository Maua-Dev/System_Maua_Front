import 'package:mobx/mobx.dart';

part 'activities_store.g.dart';

class ActivitiesStore = ActivitiesStoreBase with _$ActivitiesStore;

abstract class ActivitiesStoreBase with Store {
  @observable
  bool isOpen = false;

  @action
  Future<void> trocaOpen() async {
    isOpen = !isOpen;
  }
}
