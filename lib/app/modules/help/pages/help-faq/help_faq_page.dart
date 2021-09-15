import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/components/faq_card/faqcard_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';
import 'help_faq_controller.dart';

class HelpFaqPage extends StatefulWidget {
  @override
  _HelpFaqPageState createState() => _HelpFaqPageState();
}

class _HelpFaqPageState extends ModularState<HelpFaqPage, HelpFaqController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'FAQ',
        icon: Icons.help_outline_outlined,
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
          Expanded(child: Observer(builder: (_) {
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
          })),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
