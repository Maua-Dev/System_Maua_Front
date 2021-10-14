enum ReservasEnum {
  QUADRA,
  FABLAB,
  LABORATORIO,
}

extension ReservasEnumExtension on ReservasEnum {
  String get titulo {
    switch (this) {
      case ReservasEnum.QUADRA:
        return 'Quadra';
      case ReservasEnum.FABLAB:
        return 'FabLab';
      case ReservasEnum.LABORATORIO:
        return 'Laboratório';
    }
  }

  String get pushNamed {
    switch (this) {
      case ReservasEnum.QUADRA:
        return '/help/avisos';
      case ReservasEnum.FABLAB:
        return '/help/video-tutorial';
      case ReservasEnum.LABORATORIO:
        return '/help/softwares';
    }
  }
}
