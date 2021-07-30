import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/widgets/bottom_navigation_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/filter_period/filter_period_widget.dart';
import 'package:system_maua_front/app/shared/components/floating_action_button_custom/floating_action_button_custom_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';
import 'package:system_maua_front/shared/components/activity_card/activity_card_widget.dart';
import 'package:system_maua_front/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/shared/components/progress_indicator/progress_indicator_widget.dart';

import 'activities_controller.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({Key? key}) : super(key: key);

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState
    extends ModularState<ActivitiesPage, ActivitiesController> {
  var controllerNavigationBar = Modular.get<BottomNavigationBarController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: Text('Entregas'),
          leadingWidget: BackButton(
            onPressed: () {
              Modular.to.navigate('/home');
            },
          ),
          iconBar: Icon(Icons.list_alt_rounded),
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8, top: 8),
                child: FilterPeriodWidget(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Observer(builder: (_) {
                      return Text(
                        '${controller.activitiesDelivered} de ${controller.activities.length}',
                        style: AppTextStyles.lightBody,
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Observer(builder: (_) {
                      return ProgressIndicatorWidget(
                        value: controller.activitiesDeliveredPercentual,
                      );
                    }),
                  ),
                ],
              ),
              Expanded(
                child: Observer(
                  builder: (_) {
                    return ListView.separated(
                      itemCount: controller.activities.length,
                      itemBuilder: (_, index) {
                        return ActivityCard(
                          delivered: controller.activities[index].delivered,
                          subject: controller.activities[index].subject,
                          activityName:
                              controller.activities[index].activityName,
                          date: controller.activities[index].date,
                          hour: controller.activities[index].hour,
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Container();
                      },
                    );
                  },
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
