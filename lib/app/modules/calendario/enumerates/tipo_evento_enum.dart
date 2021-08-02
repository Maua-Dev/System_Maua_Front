import 'package:flutter/material.dart';

enum TipoEventoEnum { SITE, CATEGORIA, CURSO, GRUPO, USUARIO, OUTRO }

extension AvaliacaoEnumExtension on TipoEventoEnum {
  Color get color {
    switch (this) {
      case TipoEventoEnum.SITE:
        return Colors.green.shade200;
      case TipoEventoEnum.CATEGORIA:
        return Colors.purple.shade200;
      case TipoEventoEnum.CURSO:
        return Colors.red.shade200;
      case TipoEventoEnum.GRUPO:
        return Colors.yellow.shade200;
      case TipoEventoEnum.USUARIO:
        return Colors.blue.shade200;
      case TipoEventoEnum.OUTRO:
        return Colors.grey.shade200;
    }
  }
}
