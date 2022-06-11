// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:flutter/material.dart';
// import 'package:system_maua_front/app/modules/grades/ui/achieve-goals/widgets/container_grades.dart';
// import 'package:system_maua_front/app/modules/grades/ui/achieve-goals/widgets/row_navigator_grades_widget.dart';
// import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/list_grades.dart';
// import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

// import 'atingir_metas_controller.dart';

// class AtingirMetasPage extends StatefulWidget {
//   const AtingirMetasPage({Key? key, nomeMateria}) : super(key: key);
//   @override
//   AtingirMetasPageState createState() => AtingirMetasPageState();
// }

// class AtingirMetasPageState
//     extends ModularState<AtingirMetasPage, AtingirMetasController> {
//   // var controllerNavigationBar = Modular.get<BottomNavigationBarController>();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBarWidget(
//           title: 'Notas',
//           icon: Icons.playlist_add_check_outlined,
//         ),
//         body: SingleChildScrollView(
//           child: Container(
//             child: Center(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 8, bottom: 32),
//                 child: Column(
//                   children: [
//                     RowNavigatorgradesWidget(
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 20),
//                       child: FeedbackContainerCard(
//                         subjectName: Modular.args!.data as String,
//                         parcialNote: controller.notaComputada,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     ListGrades(
//                       subjectName: 'aa',
//                       notaParcial: '7.6',
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
