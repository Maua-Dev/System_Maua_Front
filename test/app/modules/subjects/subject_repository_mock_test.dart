import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/subjects/repositories/subject_repository.dart';

void main() {
  late SubjectRepository subjectRepository;

  setUpAll(() {
    subjectRepository = SubjectRepository();
  });

  test('[TEST] - getSubject', () {
    expect(subjectRepository.subsjectsMock.isNotEmpty, true);
  });
}
