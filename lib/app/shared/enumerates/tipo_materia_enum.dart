enum TipoMateriaEnum { RESMAT, CALC1, CALC2, FT, ACADEMIATALENTOS }

extension TipoMateriaEnumExtension on TipoMateriaEnum {
  String get name {
    switch (this) {
      case TipoMateriaEnum.RESMAT:
        return 'Resistência dos Materiais';
      case TipoMateriaEnum.CALC1:
        return 'Cálculo Diferencial I';
      case TipoMateriaEnum.CALC2:
        return 'Cálculo Diferencial II';
      case TipoMateriaEnum.FT:
        return 'Fenômenos de Transporte';
      case TipoMateriaEnum.ACADEMIATALENTOS:
        return 'Academia de Talentos';
    }
  }
}
