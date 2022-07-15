import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import '../../shared/components/app_bar/app_bar_widget.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  var isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'FAQ',
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Text(
                'Como podemos ajudar?',
                style: AppTextStyles.titleH1
                    .copyWith(color: AppColors.brandingBlue),
              ),
            ),
          ),
          Divider(
            color: AppColors.shape,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: ExpansionPanelList(
                expandedHeaderPadding: EdgeInsets.zero,
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isOpen = !isOpen;
                  });
                },
                children: [
                  returnExpansionPanel(
                    title: 'Sobre',
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'O que é o Mauápp?',
                          style: AppTextStyles.cardH3.copyWith(
                              color: AppColors.brandingBlue,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Image.asset('assets/images/logoDev.png'),
                        ),
                        Text(
                          'O que é o Dev. Community?',
                          style: AppTextStyles.cardH3.copyWith(
                              color: AppColors.brandingBlue,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
                      ],
                    ),
                    isOpen: isOpen,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  ExpansionPanel returnExpansionPanel(
      {required String title, required Widget content, required bool isOpen}) {
    return ExpansionPanel(
      backgroundColor: AppColors.lightPurple,
      canTapOnHeader: true,
      headerBuilder: (context, isOpen) {
        return Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: AppTextStyles.cardH3.copyWith(
                  color: AppColors.brandingBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        );
      },
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: content),
      isExpanded: isOpen,
    );
  }
}
