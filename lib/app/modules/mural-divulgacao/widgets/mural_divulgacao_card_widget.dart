import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class MuralDivulgacaoCardWidget extends StatelessWidget {
  const MuralDivulgacaoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF007FFF).withOpacity(0.2),
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF007FFF),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Icon(
                  Icons.sd_card_alert,
                  color: AppColors.white,
                ),
              ),
              Text('Vendas Material')
            ],
          ),
        ));
  }
}
