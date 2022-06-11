import 'package:system_maua_front/app/shared/enumerates/subject_enum.dart';

import '../models/subject_model.dart';
import 'subject_repository_interface.dart';

class SubjectRepository implements ISubjectRepository {
  var subsjectsMock = [
    SubjectModel(
      name: SubjectEnum.ACADEMIATALENTOS,
      progress: 0.9,
    ),
    SubjectModel(name: SubjectEnum.CALC1, progress: 0.4),
    SubjectModel(name: SubjectEnum.RESMAT, progress: 0.0),
    SubjectModel(
      name: SubjectEnum.ACADEMIATALENTOS,
      progress: 0.9,
    ),
    SubjectModel(name: SubjectEnum.CALC1, progress: 0.4),
    SubjectModel(name: SubjectEnum.RESMAT, progress: 0.0),
    SubjectModel(
      name: SubjectEnum.ACADEMIATALENTOS,
      progress: 0.9,
    ),
    SubjectModel(name: SubjectEnum.CALC1, progress: 0.4),
    SubjectModel(name: SubjectEnum.RESMAT, progress: 0.0),
    SubjectModel(
      name: SubjectEnum.ACADEMIATALENTOS,
      progress: 0.9,
    ),
    SubjectModel(name: SubjectEnum.CALC1, progress: 0.4),
    SubjectModel(name: SubjectEnum.RESMAT, progress: 1),
  ];

  @override
  Future<List<SubjectModel>> getSubject() {
    return Future.value(subsjectsMock);
  }
}
