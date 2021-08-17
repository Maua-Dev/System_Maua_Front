import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/materias_apresentacao_controller.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/widgets/plano_ensino_pdf_button_widget.dart';
import 'package:system_maua_front/app/modules/materias-apresentacao/widgets/titulo_apresentacao_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/pdf_enum.dart';

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
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TituloApresentacaoWidget(titulo: 'Introdução'),
                    Text(
                      controller.materia.introducao,
                      textAlign: TextAlign.justify,
                    ),
                    TituloApresentacaoWidget(titulo: 'Plano de Ensino'),
                    controller.materia.pdf != null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: PlanoEnsinoPdfButtonWidget(
                              titulo: itemPdf.tituloArquivo,
                              onPressed: () {
                                controller
                                    .navigateToPlanoEnsino(controller.materia);
                              },
                              imagem: itemPdf.arquivosEnum.imagemString,
                            ))
                        : SizedBox.shrink(),
                    TituloApresentacaoWidget(titulo: 'Docentes da Disciplina'),
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
                Align(
                  alignment: Alignment.topCenter,
                  child: FloatingActionButton(onPressed: () {}),
                ),
              ]),
            );
          }),
        ),
      ),
    );
  }
}
