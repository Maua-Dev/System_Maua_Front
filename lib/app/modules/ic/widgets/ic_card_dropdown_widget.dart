import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class IcCardDropDownWidget<T> extends StatelessWidget {
  final void Function(T? value)? onChanged;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  const IcCardDropDownWidget({
    Key? key,
    this.onChanged,
    required this.items,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mediaQuery;
    MediaQuery.of(context).size.width < 350
        ? mediaQuery = MediaQuery.of(context).size.width * 0.26
        : MediaQuery.of(context).size.width < 385
            ? mediaQuery = MediaQuery.of(context).size.width * 0.3
            : mediaQuery = MediaQuery.of(context).size.width * 0.32;
    return Padding(
      padding: EdgeInsets.only(left: mediaQuery, right: 24),
      child: DropdownButtonFormField<T>(
        isExpanded: true,
        alignment: AlignmentDirectional.centerEnd,
        value: value,
        onChanged: onChanged,
        items: items,
        style: AppTextStyles.cardH3.copyWith(
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          contentPadding: EdgeInsets.only(top: 16, bottom: 16),
        ),
      ),
    );
  }
}
