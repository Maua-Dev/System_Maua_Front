import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class FeedbackContainerCard extends StatelessWidget {
  final String subjectName;
  final double currentNote;
  final double parcialNote;

  const FeedbackContainerCard(
      {Key? key,
      required this.subjectName,
      required this.currentNote,
      required this.parcialNote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [AppColors.clickShadow],
            color: Color.fromRGBO(2, 90, 203, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 48,
          child: Center(
            child: Text('$subjectName',
                style: AppTextStyles.bodyH4.copyWith(
                  fontSize: 21,
                  color: Colors.white,
                )),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [AppColors.clickShadow],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    'Nota Final: ',
                    style: TextStyle(
                      color: Color.fromRGBO(2, 40, 147, 1),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '$currentNote',
                    style: TextStyle(
                      color: currentNote >= 6.0
                          ? Color.fromRGBO(225, 218, 41, 1)
                          : Colors.red,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Nota Parcial: ',
                    style: TextStyle(
                      color: Color.fromRGBO(2, 40, 147, 1),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '$parcialNote',
                    style: TextStyle(
                      color: parcialNote >= 6
                      ? Color.fromRGBO(2, 40, 147, 1)
                      : Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
