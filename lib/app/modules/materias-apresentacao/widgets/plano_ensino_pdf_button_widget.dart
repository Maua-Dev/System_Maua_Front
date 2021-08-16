import 'package:flutter/material.dart';

class PlanoEnsinoPdfButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final Icon imagem;
  final String titulo;

  const PlanoEnsinoPdfButtonWidget(
      {Key? key, this.onPressed, required this.imagem, required this.titulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            imagem,
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                titulo,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ));
  }
}
