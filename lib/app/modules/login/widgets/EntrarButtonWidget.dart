import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class EntrarButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  const EntrarButtonWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: MediaQuery.of(context).size.width * .7,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: AppColors.buttonBrandingBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: onPressed,
          child: Text(
            'Entrar',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
