import 'package:dio/dio.dart';

import '../models/materias_model.dart';

class MateriasDatasource {
  final Dio dio;

  MateriasDatasource({required this.dio});

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
