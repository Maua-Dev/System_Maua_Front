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
        codigoMateria: 'EFB101',
        nomeMateria: TipoMateriaEnum.ACADEMIATALENTOS,
        foto: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        professores: [
          ProfessoresModel(
              nome: 'Everson Denis',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Glock camuflada com pentão de robocop',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
    MateriasModel(
        codigoMateria: 'EFB104',
        nomeMateria: TipoMateriaEnum.CALC1,
        foto: 'https://avatars.githubusercontent.com/u/24724451?v=4',
        professores: [
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
          ProfessoresModel(
              nome: 'Furlaneto Cabeça de ',
              foto: 'https://avatars.githubusercontent.com/u/24724451?v=4'),
        ]),
  ];

  setUpAll(() {
    when(repository.getMaterias()).thenAnswer((_) async => materiasTeste);
    materiasController = MateriasController(repository);
  });

  test('[TEST] - getAluno', () async {
    await materiasController.getMaterias();
    expect(materiasController.materias.length, materiasTeste.length);
  });

  test('[TEST] - getFotosProfessores', () {
    var teste = materiasController.getFotosProfessores(0);
    expect(teste.length, materiasTeste[0].professores!.length);
  });
}
