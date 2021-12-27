import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class ListaNotasCard extends StatelessWidget {
  final Function()? onTap;
  final String? texto;
  final double? nota;
  final int? mediaMaua;

  ListaNotasCard({
    Key? key,
    this.onTap,
    this.texto,
    this.nota,
    this.mediaMaua,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$texto',
              style: AppTextStyles.lightBody.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Text(
              '${nota ?? '-'}',
              style: AppTextStyles.lightBody.copyWith(
                color: nota != null
                    ? nota! >= mediaMaua!
                        ? Colors.black
                        : AppColors.red
                    : Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
