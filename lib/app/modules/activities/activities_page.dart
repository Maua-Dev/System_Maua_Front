import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/widgets/bottom_navigation_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/floating_action_button_custom/floating_action_button_custom_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';
import 'package:system_maua_front/shared/components/activity_card/activity_card_widget.dart';
import 'package:system_maua_front/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/shared/components/progress_indicator/progress_indicator_widget.dart';

import 'activities_store.dart';

class ActivitiesPage extends StatefulWidget {
  final String title;
  const ActivitiesPage({Key? key, this.title = 'Deliveries'}) : super(key: key);

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState
    extends ModularState<ActivitiesPage, ActivitiesStore> {
  static String get activitiesIcon => 'assets/icons/activitiesIcon.svg';
  var controllerNavigationBar = Modular.get<BottomNavigationBarController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: Text('Entregas'),
          leadingWidget: BackButton(
            onPressed: () {},
          ),
          iconBar: Image.asset(activitiesIcon),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Semanal',
                          style: TextStyle(
                            fontSize: 24,
                            color: AppColors.strongLetter,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.filter_list,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                      ]),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      '3 de 10',
                      style: AppTextStyles.lightBody,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: ProgressIndicatorWidget(
                      value: 3 / 10,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    // height: MediaQuery.of(context).size.height - 245,
                    height: MediaQuery.of(context).size.height - 325,
                    child: Expanded(
                      child: ListView(
                        padding: const EdgeInsets.only(bottom: 8),
                        children: [
                          ActivityCard(
                            delivered: false,
                            subject: 'Fenomenos de transporte',
                            activityName: 'Equação de Bernoulli',
                            date: '10/05/2021',
                            hour: '20:00',
                          ),
                          ActivityCard(
                            delivered: false,
                            subject: 'Fenomenos de transporte',
                            activityName: 'Equação de Bernoulli',
                            date: '10/05/2021',
                            hour: '20:00',
                          ),
                          ActivityCard(
                            delivered: false,
                            subject: 'Fenomenos de transporte',
                            activityName: 'Equação de Bernoulli',
                            date: '10/05/2021',
                            hour: '20:00',
                          ),
                          ActivityCard(
                            delivered: false,
                            subject: 'Fenomenos de transporte',
                            activityName: 'Equação de Bernoulli',
                            date: '10/05/2021',
                            hour: '20:00',
                          ),
                          ActivityCard(
                            delivered: false,
                            subject: 'Fenomenos de transporte',
                            activityName: 'Equação de Bernoulli',
                            date: '10/05/2021',
                            hour: '20:00',
                          ),
                          ActivityCard(
                            delivered: false,
                            subject: 'Fenomenos de transporte',
                            activityName: 'Equação de Bernoulli',
                            date: '10/05/2021',
                            hour: '20:00',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Observer(builder: (_) {
          return BottomNavigationBarWidget(
            isOpen: controllerNavigationBar.isOpen,
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButtonCustomWidget(
          key: ValueKey('actionButton'),
          onPressed: () {
            controllerNavigationBar.trocaOpen();
          },
        ),
      ),
    );
  }
}
