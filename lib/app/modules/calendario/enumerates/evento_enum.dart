import 'package:flutter/material.dart';

enum EventoEnum { SITE, CATEGORIA, CURSO, GRUPO, USUARIO, OUTRO }

extension AvaliacaoEnumExtension on EventoEnum {
  Color get color {
    switch (this) {
      case EventoEnum.SITE:
        return Color.fromRGBO(130, 237, 133, 1);
      case EventoEnum.CATEGORIA:
        return Color.fromRGBO(224, 203, 224, 1);
      case EventoEnum.CURSO:
        return Color.fromRGBO(250, 128, 114, 1);
      case EventoEnum.GRUPO:
        return Color.fromRGBO(253, 214, 82, 1);
      case EventoEnum.USUARIO:
        return Color.fromRGBO(2, 86, 126, 1);
      case EventoEnum.OUTRO:
        return Color.fromRGBO(206, 212, 218, 1);
    }
  }
}
