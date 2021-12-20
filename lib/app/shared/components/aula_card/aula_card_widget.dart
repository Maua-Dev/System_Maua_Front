import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class AulaCardWidget extends StatelessWidget {
  final String materia;
  final String duracao;
  final String local;
  const AulaCardWidget(
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
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: AppColors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: AppColors.borderGrey)),
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
                              Text(materia,
                                  style: AppTextStyles.lightBody.copyWith(
                                    fontSize:
                                        MediaQuery.of(context).size.width < 350
                                            ? 18
                                            : 20,
                                  ))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.12,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 1, color: AppColors.borderGrey)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Icon(
                                Icons.alarm,
                                size: MediaQuery.of(context).size.width < 350
                                    ? 32
                                    : 40,
                                color: AppColors.thinLetter,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                duracao,
                                style: AppTextStyles.lightBody.copyWith(
                                    fontSize:
                                        MediaQuery.of(context).size.width < 350
                                            ? 16
                                            : 20),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.12,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(width: 1, color: AppColors.borderGrey)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.room_rounded,
                              size: MediaQuery.of(context).size.width < 350
                                  ? 32
                                  : 40,
                              color: AppColors.thinLetter,
                            ),
                          ),
                          Text(
                            local,
                            style: AppTextStyles.lightBody.copyWith(
                                fontSize:
                                    MediaQuery.of(context).size.width < 350
                                        ? 16
                                        : 20),
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
