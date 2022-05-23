import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/materias/materias_controller.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/repositories/materias_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';

import 'materias_controller_test.mocks.dart';

@GenerateMocks([IMateriasRepository])
void main() {
  IMateriasRepository repository = MockIMateriasRepository();
  late MateriasController materiasController;
  var materiasTeste = [
    MateriasModel(nome: TipoMateriaEnum.ACADEMIATALENTOS, progresso: 0.9),
    MateriasModel(nome: TipoMateriaEnum.CALC1, progresso: 0.4),
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
