import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';

part 'file_view_controller.g.dart';

class FileViewController = _FileViewControllerBase with _$FileViewController;

abstract class _FileViewControllerBase with Store {
  final IMateriasRepository repository;
  final String codigoMateria;

  _FileViewControllerBase(
      {required this.repository, required this.codigoMateria}) {
    setDocument();
  }

  @observable
  late PDFDocument document;

  @observable
  bool isLoading = true;

  @action
  void setIsLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> setDocument() async {
    var url = await repository.getUrlPdf(codigoMateria);
    try {
      document = await PDFDocument.fromURL(url, headers: {
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Credentials': 'true',
        'Access-Control-Allow-Headers':
            'Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale',
        'Access-Control-Allow-Methods': 'POST, OPTIONS'
      });
      setIsLoading();
    } catch (e) {
      print(e.toString());
    }
  }
}
