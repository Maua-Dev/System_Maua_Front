import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class AtividadeCardWidget extends StatelessWidget {
  final String nomeAtividade;
  final bool entregue;
  final String nota;

  const AtividadeCardWidget({
    Key? key,
    required this.nomeAtividade,
    required this.entregue,
    required this.nota,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Expanded(
        child: Material(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              child: Container(
                // height: 125,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(nomeAtividade),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.006,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            entregue ? Icons.check : Icons.close,
                            color: entregue ? Color(0xFF04D361) : AppColors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(entregue ? 'Entregue' : 'Não entregue'),
                        ],
                      ),
                      Divider(),
                      Text('Nota: $nota'),
                    ],
                  ),
                )),
              ),
            )),
      ),
    );
  }
}
