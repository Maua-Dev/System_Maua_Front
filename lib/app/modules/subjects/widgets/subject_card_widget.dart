import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class SubjectCardWidget extends StatelessWidget {
  final String name;
  final double progress;
  const SubjectCardWidget({
    Key? key,
    required this.name,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 26),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [AppColors.clickShadow],
              borderRadius: BorderRadius.circular(10),
              color: AppColors.lightBlue),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text(
                        name,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Progresso:',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      '${(progress * 100).round()}%',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.shape),
                      ),
                      Container(
                        width:
                            MediaQuery.of(context).size.width * 0.8 * progress,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.green),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
