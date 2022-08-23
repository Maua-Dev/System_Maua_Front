// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
// import 'package:system_maua_front/app/modules/home-aluno/home_aluno_controller.dart';
// import 'package:system_maua_front/app/modules/home-aluno/repositories/home_aluno_repository_interface.dart';
// import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
// import 'package:system_maua_front/app/shared/models/aluno_model.dart';
// import 'package:system_maua_front/app/shared/models/aula_model.dart';

// import 'home_aluno_controller_test.mocks.dart';

// @GenerateMocks([IHomeAlunoRepository])
// void main() {
//   IHomeAlunoRepository repository = MockIHomeAlunoRepository();
//   late HomeAlunoController homeAlunoController;
//   var alugradeste = AlunoModel(nome: 'Gabriel', ra: '17.00163-3');
//   var aulaTeste = AulaModel(
//       tipoMateriaEnum: TipoMateriaEnum.FT,
//       horario: '12:00',
//       duracao: '1:40',
//       local: 'H201');

//   setUpAll(() {
//     when(repository.getAluno()).thenAnswer((_) async => alugradeste);
//     when(repository.getAula()).thenAnswer((_) async => aulaTeste);
//     homeAlunoController = HomeAlunoController(repository);
//   });

//   test('[TEST] - getAluno', () async {
//     await homeAlunoController.getAluno();
//     expect(homeAlunoController.aluno, alugradeste);
//   });

//   test('[TEST] - getAula', () async {
//     await homeAlunoController.getAula();
//     expect(homeAlunoController.aula, aulaTeste);
//   });
// }
