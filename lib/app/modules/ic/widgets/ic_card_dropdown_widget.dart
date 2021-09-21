import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class IcCardDrpDownWidget<T> extends StatelessWidget {
  final void Function(T? value)? onChanged;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  const IcCardDrpDownWidget(
      {Key? key, this.onChanged, required this.items, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [AppColors.shadow],
            border: Border.all(color: AppColors.stroke)),
        child: DropdownButtonFormField<T>(
          alignment: AlignmentDirectional.center,
          value: value,
          onChanged: onChanged,
          items: items,
          style: AppTextStyles.body.copyWith(
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            contentPadding: EdgeInsets.only(top: 16, bottom: 16),
          ),
        ),
      ),
    );
  }
}
