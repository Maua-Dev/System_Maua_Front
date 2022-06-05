import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:system_maua_front/app/shared/enumerates/weekdays_enum.dart';
import 'package:system_maua_front/app/shared/models/classes_model.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import '../../enumerates/tipo_materia_enum.dart';

class ClassesOfDayWidget extends StatelessWidget {
  final List<ClassesModel> classesOfDay;
  const ClassesOfDayWidget({
    Key? key,
    required this.classesOfDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          constraints: BoxConstraints(minWidth: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: AppColors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          '${WeekdaysEnum.values[classesOfDay[0].startHour.weekday - 1].name}',
                          style: TextStyle(
                              color: AppColors.brandingBlue,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: classesOfDay.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: AppColors.brandingBlue,
                                  borderRadius: BorderRadius.circular(7.5)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              '${classesOfDay[0].subjectEnum?.name ?? ''}',
                              style: TextStyle(
                                color: AppColors.brandingBlue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 45,
                            ),
                            Icon(
                              Icons.alarm,
                              size: MediaQuery.of(context).size.width < 350
                                  ? 22
                                  : 32,
                              color: AppColors.lightLetter,
                            ),
                            Text(
                              '${DateFormat('HH:mm').format(classesOfDay[index].startHour)}',
                              style: AppTextStyles.cardH3,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.room_rounded,
                              size: MediaQuery.of(context).size.width < 350
                                  ? 22
                                  : 32,
                              color: AppColors.lightLetter,
                            ),
                            Text(
                              classesOfDay[0].local,
                              style: AppTextStyles.cardH3,
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        )
                      ],
                    );
                  },
                )
              ],
            ),
          )),
    );
  }
}
