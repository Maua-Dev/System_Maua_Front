import 'package:system_maua_front/app/shared/enumerates/files_enum.dart';

class FilesModel {
  final FilesEnum file;
  final String fileName;
  final String fileUrl;

  FilesModel(
      {required this.fileUrl, required this.file, required this.fileName});
}
