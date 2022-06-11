enum GradesEnum {
  P1,
  P2,
  PS1,
  P3,
  P4,
  PS2,
  T1,
  T2,
  T3,
  T4,
  T5,
  T6,
  T7,
  T8,
  T9,
  T10,
  T11,
  T12
}

extension GradesEnumExtension on GradesEnum {
  String get name {
    switch (this) {
      case GradesEnum.P1:
        return 'P1';
      case GradesEnum.P2:
        return 'P2';
      case GradesEnum.PS1:
        return 'PS1';
      case GradesEnum.P3:
        return 'P3';
      case GradesEnum.P4:
        return 'P4';
      case GradesEnum.PS2:
        return 'PS2';
      case GradesEnum.T1:
        return 'T1';
      case GradesEnum.T2:
        return 'T2';
      case GradesEnum.T3:
        return 'T3';
      case GradesEnum.T4:
        return 'T4';
      case GradesEnum.T5:
        return 'T5';
      case GradesEnum.T6:
        return 'T6';
      case GradesEnum.T7:
        return 'T7';
      case GradesEnum.T8:
        return 'T8';
      case GradesEnum.T9:
        return 'T9';
      case GradesEnum.T10:
        return 'T10';
      case GradesEnum.T11:
        return 'T11';
      case GradesEnum.T12:
        return 'T12';
    }
  }
}
