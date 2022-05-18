import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/ic/ic_controller.dart';
import 'package:system_maua_front/app/modules/ic/widgets/ic_card_custom_widget.dart';
import 'package:system_maua_front/app/modules/ic/widgets/ic_card_dropdown_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/enumerates/tronco_enum.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class IcPage extends StatefulWidget {
  IcPage({Key? key}) : super(key: key);

  @override
  _IcPageState createState() => _IcPageState();
}

class _IcPageState extends ModularState<IcPage, IcController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Iniciação Científica',
        icon: Icons.biotech_rounded,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [AppColors.shadow],
                      border: Border.all(color: AppColors.shape, width: 2)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          'O que é?',
                          style: AppTextStyles.cardH3
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        child: Text(
                          'O objetivo da Iniciação Científica é inserir nas atividades de pesquisas científicas e tecnológicas os estudantes de graduação com pouca ou nenhuma experiência em trabalhos ligados nesse tema.',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IcCardCustomWidget(titulo: 'Informações gerais'),
              IcCardCustomWidget(titulo: 'Normas para participar'),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [AppColors.shadow],
                      border: Border.all(color: AppColors.shape)),
                  child: Column(
                    children: [
                      IcCardDropDownWidget(
                        items: TroncoEnum.values.map((TroncoEnum value) {
                          return DropdownMenuItem<TroncoEnum>(
                            value: value,
                            child: Text(value.nomeTroncoAbreviacao),
                          );
                        }).toList(),
                        value: controller.tronco,
                        onChanged: (value) {
                          controller.setTronco(value as TroncoEnum);
                        },
                      ),
                      Observer(builder: (_) {
                        return ListView.builder(
                          itemCount: controller.dadosTronco.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: TextButton(
                                  onPressed: () {
                                    Modular.to.pushNamed('/ic/descricao',
                                        arguments:
                                            controller.dadosTronco[index]);
                                  },
                                  child: Text(
                                    controller.listaTitulosIc[index],
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.bodyBoldH4,
                                  )),
                            );
                          },
                        );
                      })
                    ],
                  ),
                ),
              ),
              IcCardCustomWidget(titulo: 'Resultados anteriores'),
            ],
          ),
        ),
      ),
    );
  }
}
