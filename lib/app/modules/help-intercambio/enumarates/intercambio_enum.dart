enum IntercambioEnum {
  OPORTUNIDADES,
  UNIVERSIDADES,
  BOLSAS,
  IDIOMAS,
  PROGRAMA,
  CONTATO,
  FAQ
}

extension IntercambioEnumExtension on IntercambioEnum {
  String get titulo {
    switch (this) {
      case IntercambioEnum.OPORTUNIDADES:
        return 'Oportunidades abertas';
      case IntercambioEnum.UNIVERSIDADES:
        return 'Universidades parceiras';
      case IntercambioEnum.BOLSAS:
        return 'Bolsas Santander';
      case IntercambioEnum.IDIOMAS:
        return 'Idiomas no campus';
      case IntercambioEnum.PROGRAMA:
        return 'Programa de curta duração';
      case IntercambioEnum.CONTATO:
        return 'Contato';
      case IntercambioEnum.FAQ:
        return 'Perguntas frequentes';
    }
  }

  String get pushNamed {
    switch (this) {
      case IntercambioEnum.OPORTUNIDADES:
        return '';
      case IntercambioEnum.UNIVERSIDADES:
        return '';
      case IntercambioEnum.BOLSAS:
        return '';
      case IntercambioEnum.IDIOMAS:
        return '';
      case IntercambioEnum.PROGRAMA:
        return '';
      case IntercambioEnum.CONTATO:
        return '';
      case IntercambioEnum.FAQ:
        return '';
    }
  }
}
