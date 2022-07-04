import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class ContainerNameCard extends StatelessWidget {
  final String name;

  const ContainerNameCard({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [AppColors.clickShadow],
        color: Color.fromRGBO(2, 90, 203, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: Center(
        child: Text('$name',
            style: AppTextStyles.bodyH4.copyWith(
              fontSize: 21,
              color: Colors.white,
            )),
      ),
    );
  }
}
