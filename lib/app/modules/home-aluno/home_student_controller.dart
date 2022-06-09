import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_student_repository_interface.dart';
import 'package:system_maua_front/app/shared/models/student_model.dart';

import '../../shared/models/classes_model.dart';

part 'home_student_controller.g.dart';

class HomeStudentController = HomeStudentControllerBase
    with _$HomeStudentController;

abstract class HomeStudentControllerBase with Store {
  final IHomeStudentRepository repository;

  HomeStudentControllerBase(this.repository) {
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
