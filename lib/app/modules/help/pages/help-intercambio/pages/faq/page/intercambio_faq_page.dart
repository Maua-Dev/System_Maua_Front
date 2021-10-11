import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/controller/faq_intercambio_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/faq_card/faq_card_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class FaqIntercambioPage extends StatefulWidget {
  FaqIntercambioPage({Key? key}) : super(key: key);

  @override
  _FaqIntercambioPageState createState() => _FaqIntercambioPageState();
}

class _FaqIntercambioPageState
    extends ModularState<FaqIntercambioPage, FaqIntercambioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'FAQ',
        icon: Icons.airplanemode_active,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Perguntas frequentes',
                style: AppTextStyles.lightBody,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: Observer(builder: (_) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: controller.faqAction.length,
                itemBuilder: (context, index) => FaqCard(
                  titulo: controller.faqAction[index].faq.titulo,
                  descricao: controller.faqAction[index].faq.descricao,
                  isOpen: controller.faqAction[index].isOpen,
                  onPressed: () {
                    controller.trocaOpen(index);
                  },
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
