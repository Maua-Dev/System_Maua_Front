import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-introducao/widgets/plano_ensino_pdf_button_widget.dart';
import 'package:system_maua_front/app/modules/materias/pages/materias-introducao/widgets/titulo_apresentacao_widget.dart';
import 'package:system_maua_front/app/modules/materias/pages/modal-buttom-sheet/modal_buttom_sheet_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/pdf_enum.dart';

import 'materias_introducao_controller.dart';
import 'widgets/contato_docentes_widget.dart';

class MateriasIntroducaoPage extends StatefulWidget {
  final String nomeMateria;
  MateriasIntroducaoPage({Key? key, required this.nomeMateria})
      : super(key: key);

  @override
  _MateriasIntroducaoPageState createState() => _MateriasIntroducaoPageState();
}

class _MateriasIntroducaoPageState
    extends ModularState<MateriasIntroducaoPage, MateriasIntroducaoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Matérias',
          icon: Icons.library_books,
          actionWidget: Column(
            children: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  buildShowModalBottomSheet(context);
                },
              ),
              Container(
                child: Text('Sumário'),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
            child: GestureDetector(
              onHorizontalDragStart: controller.horizontalDrag,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TituloApresentacaoWidget(titulo: widget.nomeMateria),
                  TituloApresentacaoWidget(titulo: 'Introdução'),
                  Observer(builder: (_) {
                    return Text(
                      controller.introducao.resumoPagina!,
                      textAlign: TextAlign.justify,
                    );
                  }),
                  TituloApresentacaoWidget(titulo: 'Plano de Ensino'),
                  Observer(
                    builder: (context) {
                      return controller.introducao.listaArquivos != null
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: PlanoEnsinoPdfButtonWidget(
                                titulo: controller.introducao.listaArquivos!
                                    .first.tituloArquivo,
                                onPressed: () {
                                  controller.navigateToPlanoEnsino();
                                },
                                imagem: controller.introducao.listaArquivos!
                                    .first.arquivosEnum.imagemString,
                              ),
                            )
                          : SizedBox.shrink();
                    },
                  ),
                  TituloApresentacaoWidget(titulo: 'Docentes da Disciplina'),
                  Observer(builder: (_) {
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.professores.length,
                        itemBuilder: (context, index) {
                          var item = controller.professores[index];
                          return ContatoDocentesWidget(
                            nomeDocente: item.nome,
                            fotoDocente: item.foto,
                          );
                        });
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
