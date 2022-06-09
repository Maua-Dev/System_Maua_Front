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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Container(
          alignment: Alignment.center,
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
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8),
                    child: Text(
                        '${WeekdaysEnum.values[classesOfDay[0].startHour.weekday - 1].name}',
                        style: TextStyle(
                            color: AppColors.brandingBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: classesOfDay.length,
                  itemBuilder: (context, index) {
                    return ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 80,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 10,
                                child: VerticalDivider(
                                  color: AppColors.brandingBlue,
                                  thickness: 2,
                                ),
                              ),
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                    color: AppColors.brandingBlue,
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight: index == classesOfDay.length - 1 ? 42 : 54
                                ),
                                child: VerticalDivider(
                                  color: AppColors.brandingBlue,
                                  thickness: 2,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.82,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Text(
                                      '${classesOfDay[index].subjectEnum?.name ?? ''}',
                                      style: TextStyle(
                                          color: AppColors.brandingBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize:
                                              MediaQuery.of(context).size.width <=
                                                      376
                                                  ? 16
                                                  : 22),
                                      overflow: TextOverflow.fade,
                                      softWrap: false,
                                      maxLines: 1,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 45,
                                        ),
                                        Icon(
                                          Icons.alarm,
                                          size:
                                              MediaQuery.of(context).size.width <
                                                      350
                                                  ? 22
                                                  : 32,
                                          color: AppColors.lightLetter,
                                        ),
                                        Text(
                                          '${DateFormat('HH:mm').format(classesOfDay[index].startHour)}',
                                          style:
                                              MediaQuery.of(context).size.width <=
                                                      376
                                                  ? AppTextStyles.cardH3
                                                      .copyWith(fontSize: 16)
                                                  : AppTextStyles.cardH3,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.room_rounded,
                                          size:
                                              MediaQuery.of(context).size.width <
                                                      350
                                                  ? 22
                                                  : 32,
                                          color: AppColors.lightLetter,
                                        ),
                                        Text(
                                          classesOfDay[index].local,
                                          style:
                                              MediaQuery.of(context).size.width <=
                                                      376
                                                  ? AppTextStyles.cardH3
                                                      .copyWith(fontSize: 16)
                                                  : AppTextStyles.cardH3,
                                        ),
                                      ],
                                    ),
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
          )),
    );
  }
}
