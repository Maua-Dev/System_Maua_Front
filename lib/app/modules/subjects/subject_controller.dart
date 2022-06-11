import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/subjects/repositories/subject_repository_interface.dart';

import 'models/subject_model.dart';

part 'subject_controller.g.dart';

class SubjectController = SubjectControllerBase with _$SubjectController;

abstract class SubjectControllerBase with Store {
  final ISubjectRepository repository;

  SubjectControllerBase(this.repository) {
    getSubjects();
  }

  @observable
  List<SubjectModel> subject = <SubjectModel>[];

  @action
  Future<void> getSubjects() async {
    subject = await repository.getsubject();
  }
}
