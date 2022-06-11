import '../models/subject_model.dart';

abstract class ISubjectRepository {
  Future<List<SubjectModel>> getsubject();
}
