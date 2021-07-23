import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/notas-aluno/enumerates/avaliacao_enum.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class NotasCardWidget extends StatelessWidget {
  final AvaliacaoEnum tituloAvaliacao;
  final double? notaAvaliacao;
  const NotasCardWidget(
      {Key? key, required this.tituloAvaliacao, this.notaAvaliacao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(tituloAvaliacao.name + ': '),
              Text(
                notaAvaliacao == null
                    ? ''
                    : notaAvaliacao!.toStringAsFixed(1).replaceAll('.', ','),
                style: TextStyle(
                    color: notaAvaliacao! < 6.0
                        ? Colors.red
                        : AppColors.strongLetter),
              )
            ],
          ),
        ),
      ),
    );
  }
}
