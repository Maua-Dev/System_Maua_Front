import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class FeedbackContainerCard extends StatelessWidget {
  final String subjectName;
  final double? currentNote;
  final double? parcialNote;

  const FeedbackContainerCard(
      {Key? key, required this.subjectName, this.currentNote, this.parcialNote})
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
              Text(
                'Nota Final: $currentNote',
                style: TextStyle(
                  color: Color.fromRGBO(2, 40, 147, 1),
                  fontSize: 16,
                ),
              ),
              Text(
                'Nota Parcial: $parcialNote',
                style: TextStyle(
                  color: Color.fromRGBO(2, 40, 147, 1),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
