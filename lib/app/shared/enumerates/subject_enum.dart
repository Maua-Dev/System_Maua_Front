enum SubjectEnum { RESMAT, CALC1, CALC2, FT, ACADEMIATALENTOS }

extension SubjectEnumExtension on SubjectEnum {
  String get name {
    switch (this) {
      case SubjectEnum.RESMAT:
        return 'Resistência dos Materiais';
      case SubjectEnum.CALC1:
        return 'Cálculo Diferencial e Integral I';
      case SubjectEnum.CALC2:
        return 'Cálculo Diferencial e Integral II';
      case SubjectEnum.FT:
        return 'Fenômenos de Transporte';
      case SubjectEnum.ACADEMIATALENTOS:
        return 'Academia de Talentos';
    }
  }
}
