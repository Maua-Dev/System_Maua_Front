enum AvaliacaoEnum {
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

extension AvaliacaoEnumExtension on AvaliacaoEnum {
  String get name {
    switch (this) {
      case AvaliacaoEnum.P1:
        return 'P1';
      case AvaliacaoEnum.P2:
        return 'P2';
      case AvaliacaoEnum.PS1:
        return 'PS1';
      case AvaliacaoEnum.P3:
        return 'P3';
      case AvaliacaoEnum.P4:
        return 'P4';
      case AvaliacaoEnum.PS2:
        return 'PS2';
      case AvaliacaoEnum.T1:
        return 'T1';
      case AvaliacaoEnum.T2:
        return 'T2';
      case AvaliacaoEnum.T3:
        return 'T3';
      case AvaliacaoEnum.T4:
        return 'T4';
      case AvaliacaoEnum.T5:
        return 'T5';
      case AvaliacaoEnum.T6:
        return 'T6';
      case AvaliacaoEnum.T7:
        return 'T7';
      case AvaliacaoEnum.T8:
        return 'T8';
      case AvaliacaoEnum.T9:
        return 'T9';
      case AvaliacaoEnum.T10:
        return 'T10';
      case AvaliacaoEnum.T11:
        return 'T11';
      case AvaliacaoEnum.T12:
        return 'T12';
    }
  }
}
