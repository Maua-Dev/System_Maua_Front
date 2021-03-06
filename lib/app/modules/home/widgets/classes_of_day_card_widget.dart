import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:system_maua_front/app/shared/enumerates/weekdays_enum.dart';
import 'package:system_maua_front/app/shared/models/classes_model.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';
import '../../../shared/enumerates/subject_enum.dart';

class ClassesOfDayWidget extends StatelessWidget {
  final List<ClassesModel> classesOfDay;
  final bool isLoading;
  const ClassesOfDayWidget({
    Key? key,
    required this.classesOfDay,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(minWidth: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [AppColors.clickShadow],
              color: AppColors.white,
            ),
            child: isLoading
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '${WeekdaysEnum.values[classesOfDay[0].startHour.weekday - 1].name}',
                            style: AppTextStyles.titleH2.copyWith(
                              color: AppColors.brandingBlue,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 24, left: 24, bottom: 8),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: classesOfDay.length,
                          itemBuilder: (context, index) {
                            return ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: 72,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 16,
                                        child: VerticalDivider(
                                          color: AppColors.brandingBlue,
                                          thickness: 1.5,
                                        ),
                                      ),
                                      Container(
                                        height: 12,
                                        width: 12,
                                        decoration: BoxDecoration(
                                            color: AppColors.brandingBlue,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      ConstrainedBox(
                                        constraints:
                                            BoxConstraints(maxHeight: 44),
                                        child: VerticalDivider(
                                          color: AppColors.brandingBlue,
                                          thickness: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16.0, top: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${classesOfDay[index].subjectEnum?.name ?? ''}',
                                            style: AppTextStyles.cardH3
                                                .copyWith(
                                                    color:
                                                        AppColors.brandingBlue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                            overflow: TextOverflow.fade,
                                            softWrap: false,
                                            maxLines: 1,
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.alarm,
                                                size: 24,
                                                color: AppColors.lightLetter,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '${DateFormat('HH:mm').format(classesOfDay[index].startHour)}',
                                                style: AppTextStyles.cardH3,
                                              ),
                                              SizedBox(
                                                width: 16,
                                              ),
                                              Icon(
                                                Icons.location_on,
                                                size: 24,
                                                color: AppColors.lightLetter,
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text(
                                                classesOfDay[index].local,
                                                style: AppTextStyles.cardH3,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )));
  }
}
