import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class ActivityCard extends StatelessWidget {
  final bool delivered;
  final String subject;
  final String activityName;
  final String date;
  final String hour;

  const ActivityCard(
      {Key? key,
      required this.delivered,
      required this.subject,
      required this.activityName,
      required this.date,
      required this.hour})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.28,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: AppColors.shape),
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            print('cliquei');
          },
          child: Container(
            padding:
                const EdgeInsets.only(top: 10, left: 12, right: 12, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: subject.length > 45 ? 2 : 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColors.shape),
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                      ),
                      child: Center(
                        child: Text(
                          subject,
                          style: AppTextStyles.bodyBoldH4,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: AppColors.shape),
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.white,
                    ),
                    child: Center(
                      child: Text(
                        activityName.length < 45
                            ? activityName
                            : activityName.substring(0, 25) + '...',
                        style: AppTextStyles.cardH3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.075,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColors.shape),
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white,
                      ),
                      child: Center(
                        child: Visibility(
                          visible: delivered,
                          replacement: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$date - $hour',
                                style: AppTextStyles.cardH3.copyWith(
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.alarm,
                                size: 30,
                                color: AppColors.generalLetter,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check_circle_outline,
                                color: Color(0xFF04D361),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Entregue',
                                style: AppTextStyles.cardH3,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
