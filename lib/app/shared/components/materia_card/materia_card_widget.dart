import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class MateriaCardWidget extends StatelessWidget {
  final TipoMateriaEnum materia;
  final String duracao;
  final String local;
  const MateriaCardWidget(
      {Key? key,
      required this.materia,
      required this.duracao,
      required this.local})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.28,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.25,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Próxima aula',
                                style: AppTextStyles.bodyBold,
                              ),
                              Text(
                                materia.name,
                                style: AppTextStyles.body,
                              )
                            ]),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.alarm,
                              size: 40,
                              color: AppColors.thinLetter,
                            ),
                          ),
                          Text(
                            duracao,
                            style: AppTextStyles.body,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.room_rounded,
                              size: 40,
                              color: AppColors.thinLetter,
                            ),
                          ),
                          Text(
                            local,
                            style: AppTextStyles.body,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
