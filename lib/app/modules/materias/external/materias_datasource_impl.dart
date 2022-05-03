import 'package:dio/dio.dart';
import 'package:system_maua_front/app/modules/materias/external/materias_datasource_interface.dart';

import '../models/materias_model.dart';

class MateriasDatasourceImpl implements MateriasDatasourceInterface {
  final Dio dio;

  MateriasDatasourceImpl({required this.dio});

  @override
  Future<List<MateriasModel>> getAllMaterias() async {
    try {
      var res = await Dio().get(dio.options.baseUrl + '/');
      if (res.statusCode == 200) {
        return MateriasModel.fromMaps(res.data as List<dynamic>);
      }
      throw Exception();
    } catch (e) {
      print('Erro com a conexão da API: ' + e.toString());
      rethrow;
    }
  }
}
