import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/materias/materias_controller.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/models/professores_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

import 'materias_controller_test.mocks.dart';

@GenerateMocks([IMateriasRepository])
void main() {
  IMateriasRepository repository = MockIMateriasRepository();
  late MateriasController materiasController;
  var materiasTeste = [
    MateriasModel(
        nome: TipoMateriaEnum.ACADEMIATALENTOS,
        foto:
            'https://www.contabeis.com.br/assets/img/news/dc7f7a5aa93d4fc89c6edd19df58ea4a.jpg',
        professores: [
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
    MateriasModel(
        nome: TipoMateriaEnum.CALC1,
        foto:
            'https://www.contabeis.com.br/assets/img/news/dc7f7a5aa93d4fc89c6edd19df58ea4a.jpg',
        professores: [
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
  ];

  setUpAll(() {
    when(repository.getMaterias()).thenAnswer((_) async => materiasTeste);
    materiasController = MateriasController(repository);
  });

  test('[TEST] - getAluno', () async {
    await materiasController.getMaterias();
    expect(materiasController.materias, materiasTeste);
  });
}
