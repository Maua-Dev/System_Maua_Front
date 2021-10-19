enum EsportesEnum { BASQUETE, FUTSAL, VOLEI, HANDBALL, TENISDEMESA }

extension EsportesEnumExtension on EsportesEnum {
  String get titulo {
    switch (this) {
      case EsportesEnum.BASQUETE:
        return 'Basquete';
      case EsportesEnum.FUTSAL:
        return 'Futsal';
      case EsportesEnum.VOLEI:
        return 'Vôlei';
      case EsportesEnum.HANDBALL:
        return 'Handball';
      case EsportesEnum.TENISDEMESA:
        return 'Tênis de Mesa';
    }
  }
}
