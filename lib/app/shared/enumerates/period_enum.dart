enum PeriodEnum { DAILY, WEEKLY, MONTHLY, SEMIANNUAL }

extension PeriodEnumExtension on PeriodEnum {
  String get period {
    switch (this) {
      case PeriodEnum.DAILY:
        return 'Diário';
      case PeriodEnum.WEEKLY:
        return 'Semanal';
      case PeriodEnum.MONTHLY:
        return 'Mensal';
      case PeriodEnum.SEMIANNUAL:
        return 'Semestral';
      default:
        return 'Semanal';
    }
  }

  // String get periods => return <String>['D']
}
