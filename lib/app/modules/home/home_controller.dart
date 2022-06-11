import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/home/repositories/home_repository_interface.dart';
import 'package:system_maua_front/app/shared/models/student_model.dart';

import '../../shared/models/classes_model.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final IHomeRepository repository;

  HomeControllerBase(this.repository) {
    getStudent();
    getClass();
  }

  @observable
  StudentModel student = StudentModel.newInstance();

  @observable
  bool isLoading = false;

  @observable
  List<ClassesModel> classesOfDay = [ClassesModel.newInstance()];

  @action
  Future<void> getStudent() async {
    student = await repository.getStudent();
  }

  @action
  void setIsLoading(bool value) {
    isLoading = value;
  }

  @action
  Future<void> getClass() async {
    setIsLoading(true);
    classesOfDay = await repository.getClass();
    setIsLoading(false);
  }
}
