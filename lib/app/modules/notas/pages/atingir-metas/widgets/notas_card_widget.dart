import 'package:flutter/material.dart';

import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/enumerates/avaliacao_a_enum.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class NotasCardWidget extends StatefulWidget {
  final Function(String, AvaliacaoEnum)? setNota;
  final AvaliacaoEnum tituloAvaliacao;
  final double? notaAvaliacao;
  const NotasCardWidget({
    Key? key,
    this.setNota,
    required this.tituloAvaliacao,
    this.notaAvaliacao,
  }) : super(key: key);

  @override
  _NotasCardWidgetState createState() => _NotasCardWidgetState();
}

class _NotasCardWidgetState extends State<NotasCardWidget> {
  final TextEditingController _controller = TextEditingController();
  String oldText = '';

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
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.tituloAvaliacao.name + ': ',
                style: AppTextStyles.cardH3
                    .copyWith(color: AppColors.generalLetter),
              ),
              Container(
                child: widget.notaAvaliacao == null
                    ? SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                        child: TextField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          // onChanged: (value) {
                          //   widget.setNota!(value, widget.tituloAvaliacao);
                          // },
                          onChanged: (value) {
                            if (value == '') {
                              widget.setNota!(value, widget.tituloAvaliacao);
                            } else if (int.parse(value) <= 10) {
                              oldText = value;
                              widget.setNota!(value, widget.tituloAvaliacao);
                            } else {
                              _controller.text = oldText;
                            }
                          },
                          decoration: InputDecoration(
                            hintText: 'Meta',
                          ),
                        ),
                      )
                    : Text(
                        widget.notaAvaliacao == null
                            ? ''
                            : widget.notaAvaliacao!
                                .toStringAsFixed(1)
                                .replaceAll('.', ','),
                        style: AppTextStyles.cardH3.copyWith(
                            color: widget.notaAvaliacao == null
                                ? null
                                : widget.notaAvaliacao! < 6.0
                                    ? Colors.red
                                    : AppColors.generalLetter),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
