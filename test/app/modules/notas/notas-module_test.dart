// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:flutter_modular_test/flutter_modular_test.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:system_maua_front/app/modules/notas/notas_module.dart';
// import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/atingir_metas_controller.dart';
// import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/repositories/atingir_metas_repository.dart';
// import 'package:system_maua_front/app/modules/notas/pages/medias/medias_controller.dart';
// import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository.dart';
// import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/notas_aluno_controller.dart';
// import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/repositories/notas_aluno_repository.dart';

// void main() {
//   initModule(NotasModule());

//   test('[TEST] - Injeção do AtingirMetasController e AtingitMetasRepository',
//       () {
//     var atingirMetasController = Modular.get<AtingirMetasController>();
//     expect(atingirMetasController.repository,
//         isInstanceOf<AtingirMetasRepository>());
//   });

//   test('[TEST] - Injeção do MediasController e MediasRepository', () {
//     var mediasController = Modular.get<MediasController>();
//     expect(mediasController.mediasRepository, isInstanceOf<MediasRepository>());
//   });

//   test('[TEST] - Injeção do MediasController e MediasRepository', () {
//     var notasAlunoController = Modular.get<NotasAlunoController>();
//     expect(
//         notasAlunoController.repository, isInstanceOf<NotasAlunoRepository>());
//   });
// }
