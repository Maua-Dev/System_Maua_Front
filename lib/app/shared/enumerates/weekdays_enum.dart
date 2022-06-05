// ignore_for_file: constant_identifier_names

enum WeekdaysEnum {
  SEGUNDA,
  TERCA,
  QUARTA,
  QUINTA,
  SEXTA,
  SABADO,
  DOMINGO,
}

extension WeekdaysEnumExtension on WeekdaysEnum {
  String get name {
    switch (this) {
      case WeekdaysEnum.SEGUNDA:
        return 'Segunda';
      case WeekdaysEnum.TERCA:
        return 'Terça';
      case WeekdaysEnum.QUARTA:
        return 'Quarta';
      case WeekdaysEnum.QUINTA:
        return 'Quinta';
      case WeekdaysEnum.SEXTA:
        return 'Sexta';
      case WeekdaysEnum.SABADO:
        return 'Sábado';
      case WeekdaysEnum.DOMINGO:
        return 'Domingo';
    }
  }

  String get abreviation {
    switch (this) {
      case WeekdaysEnum.SEGUNDA:
        return 'Seg';
      case WeekdaysEnum.TERCA:
        return 'Ter';
      case WeekdaysEnum.QUARTA:
        return 'Qua';
      case WeekdaysEnum.QUINTA:
        return 'Qui';
      case WeekdaysEnum.SEXTA:
        return 'Sex';
      case WeekdaysEnum.SABADO:
        return 'Sáb';
      case WeekdaysEnum.DOMINGO:
        return 'Dom';
    }
  }
}
