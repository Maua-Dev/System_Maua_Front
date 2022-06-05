class StudentModel {
  final String name;
  final String ra;

  StudentModel({required this.name, required this.ra});

  factory StudentModel.newInstance() {
    return StudentModel(name: '', ra: '');
  }
}
