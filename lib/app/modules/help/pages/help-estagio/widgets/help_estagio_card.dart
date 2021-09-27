import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class HelpEstagioCard extends StatelessWidget {
  final Function()? onTap;

   HelpEstagioCard({
     Key? key,
    this.onTap,
  }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [AppColors.shadow],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.065,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Guia: como iniciar um estágio',
                    style: TextStyle(
                    color: Colors.black,
                    ),
                    ),
                    ),
                    ),
                    GestureDetector(
                        onTap: onTap,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
            ],),
          ),
      );
    }
}