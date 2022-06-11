// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/list_grades.dart';
// import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
// import 'medias_controller.dart';

// class MediasPage extends StatefulWidget {
//   const MediasPage({Key? key}) : super(key: key);

//   @override
//   _MediasPageState createState() => _MediasPageState();
// }

// class _MediasPageState extends ModularState<MediasPage, MediasController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           appBar: AppBarWidget(title: 'Médias', icon: Icons.fact_check),
//           body: SingleChildScrollView(child: Observer(builder: (_) {
//             return Padding(
//               padding: const EdgeInsets.only(top: 8.0),
//               child: Column(
//                 children: [
//                   ListView.builder(
//                       physics: NeverScrollableScrollPhysics(),
//                       shrinkWrap: true,
//                       itemCount: controller.medias.medias.length,
//                       itemBuilder: (_, index) => ListGrades(
//                             onTap: () => {
//                               Modular.to.pushNamed(
//                                 '/medias/atingir-metas',
//                                 arguments: controller.medias.medias[index].materia,
//                               ),
//                             },
//                             subjectName: controller.medias.medias[index].materia,
//                             notaParcial:
//                                 controller.medias.medias[index].getMediaComputada,
//                           )),
//                           SizedBox(
//                             height: 32,
//                           )
//                 ],
//               ),
//             );
//           }))),
//     );
//   }
// }
