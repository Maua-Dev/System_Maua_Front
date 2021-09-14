import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class BolsasWidget extends StatelessWidget{
  
  final String? titulo;
  final String? info;

  const BolsasWidget(
    {required this.titulo,
    required this.info,
    }
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [AppColors.shadow],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 340,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8,top: 8),
              child: Text('$titulo',
              style: AppTextStyles.bodyBold.copyWith(
                fontSize: 22,),
              ),
            ),
            Text('$info',
              style: TextStyle(
              fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}