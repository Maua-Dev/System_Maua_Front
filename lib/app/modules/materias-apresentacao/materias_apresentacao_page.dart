import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/materias_apresentacao_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/pdf_enum.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import 'widgets/contato_docentes_widget.dart';

class MateriasApresentacaoPage extends StatefulWidget {
  final String nomeMateria;
  MateriasApresentacaoPage({Key? key, required this.nomeMateria})
      : super(key: key);

  @override
  _MateriasApresentacaoPageState createState() =>
      _MateriasApresentacaoPageState();
}

class _MateriasApresentacaoPageState extends ModularState<
    MateriasApresentacaoPage, MateriasApresentacaoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: widget.nomeMateria,
          icon: Icons.library_books,
        ),
        body: SingleChildScrollView(
          child: Observer(builder: (_) {
            var itemPdf = controller.materia.pdf!;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Introdução',
                      style: AppTextStyles.bodyBold.copyWith(fontSize: 24),
                    ),
                  ),
                  Text(
                    controller.materia.introducao,
                    textAlign: TextAlign.justify,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Plano de Ensino',
                      style: AppTextStyles.bodyBold.copyWith(fontSize: 24),
                    ),
                  ),
                  controller.materia.pdf != null
                      ? Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextButton(
                              onPressed: () {
                                controller
                                    .navigateToPlanoEnsino(controller.materia);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  itemPdf.arquivosEnum.imagemString,
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      itemPdf.tituloArquivo,
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ],
                              )),
                        )
                      : SizedBox.shrink(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Docentes da Disciplina',
                      style: AppTextStyles.bodyBold.copyWith(fontSize: 24),
                    ),
                  ),
                  controller.materia.professores!.isNotEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.materia.professores!.length,
                          itemBuilder: (context, index) {
                            var item = controller.materia.professores![index];
                            return ContatoDocentesWidget(
                              nomeDocente: item.nome,
                              fotoDocente: item.foto,
                            );
                          },
                        )
                      : SizedBox.shrink()
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
