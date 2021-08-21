import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class ContatoDocentesWidget extends StatelessWidget {
  final String fotoDocente;
  final String nomeDocente;
  const ContatoDocentesWidget(
      {Key? key, required this.fotoDocente, required this.nomeDocente})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ClipOval(
                  child: Image.network(fotoDocente),
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nomeDocente,
                  style: AppTextStyles.body,
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Mensagem',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff00518C)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Icon(
                            Icons.textsms,
                            color: Color(0xff00518C),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
