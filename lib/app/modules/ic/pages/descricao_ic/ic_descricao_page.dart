import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/ic/models/ic_model.dart';
import 'package:system_maua_front/app/modules/ic/pages/descricao_ic/widgets/ic_descricao_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/arquivos_enum.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class IcDescricaoPage extends StatefulWidget {
  final IcModel icModel;
  IcDescricaoPage({Key? key, required this.icModel}) : super(key: key);

  @override
  _IcDescricaoPageState createState() => _IcDescricaoPageState();
}

class _IcDescricaoPageState extends State<IcDescricaoPage> {
  @override
  Widget build(BuildContext context) {
    var model = widget.icModel;
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Iniciação Científica',
        icon: Icons.biotech_rounded,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                boxShadow: [AppColors.shadow],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text(
                  model.tituloIc,
                  style: AppTextStyles.bodyBoldH4,
                  textAlign: TextAlign.center,
                ),
                IcDescricaoCardWidget(
                  titulo: 'Professores responsáveis',
                ),
                Center(
                  child: Column(
                    children: model.professoresIc
                        .map((e) => e.email == null
                            ? Text(
                                e.nome,
                              )
                            : Text(e.nome + ' - ' + e.email!))
                        .toList(),
                  ),
                ),
                IcDescricaoCardWidget(
                  titulo: 'Descrição',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Center(
                    child: Text(model.descricao),
                  ),
                ),
                IcDescricaoCardWidget(
                  titulo: 'Principal linha de pesquisa',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Center(
                    child: Text(model.linhaPesquisa),
                  ),
                ),
                model.listaArquivos == null
                    ? SizedBox.shrink()
                    : Column(
                        children: [
                          IcDescricaoCardWidget(
                            titulo: 'Principais projetos de pesquisa',
                          ),
                          Center(
                            child: Column(
                              children: model.listaArquivos!
                                  .map((e) => Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          e.arquivosEnum.iconeArquivo,
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: TextButton(
                                              child: Text(
                                                e.tituloArquivo,
                                                style: AppTextStyles.bodyBoldH4,
                                              ),
                                              onPressed: () {},
                                            ),
                                          )
                                        ],
                                      ))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
