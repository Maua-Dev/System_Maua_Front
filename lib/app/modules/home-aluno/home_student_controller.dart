import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/home-aluno/repositories/home_student_repository_interface.dart';
import 'package:system_maua_front/app/shared/models/student_model.dart';

import '../../shared/models/classes_model.dart';

part 'home_aluno_controller.g.dart';

class HomeAlunoController = HomeAlunoControllerBase with _$HomeAlunoController;

abstract class HomeAlunoControllerBase with Store {
  final IHomeStudentRepository repository;

  HomeAlunoControllerBase(this.repository) {
    getStudent();
    getClass();
  }

  @observable
  StudentModel student = StudentModel.newInstance();

  @observable
  List<ClassesModel> classesOfDay = [ClassesModel.newInstance()];

  @action
  Future<void> getStudent() async {
    student = await repository.getStudent();
  }

  @action
  Future<void> getClass() async {
    classesOfDay = await repository.getClass();
  }
}
