import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/materias/external/materias_datasource_impl.dart';
import 'package:system_maua_front/app/modules/materias/external/materias_datasource_interface.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository.dart';
import 'package:system_maua_front/app/shared/service/dio_options.dart';

void main() {
  late MateriasRepository materiasRepository;
  late MateriasDatasourceInterface datasource;

  setUpAll(() {
    datasource = MateriasDatasourceImpl(dio: Dio(mauaOptions));
    materiasRepository = MateriasRepository(datasource: datasource);
  });
}
