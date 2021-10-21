import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/materias/models/materias_model.dart';
import 'package:system_maua_front/app/modules/materias/pages/apresentacao_page.dart';
import 'package:system_maua_front/app/modules/materias/pages/test_page.dart';

class PageViewCustom extends StatefulWidget {
  final MateriasModel materia;
  PageViewCustom({Key? key, required this.materia}) : super(key: key);

  @override
  _PageViewCustomState createState() => _PageViewCustomState();
}

class _PageViewCustomState extends State<PageViewCustom> {
  final _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: [
        ApresentacaoPage(
          tipoMateria: widget.materia.nome,
          foto: widget.materia.foto,
          professores: widget.materia.professores!,
        ),
        TestPage(),
      ],
    );
  }
}
