enum TipoMateriaEnum { RESMAT, CALC1, CALC2, FT }

extension TipoMateriaEnumExtension on TipoMateriaEnum {
  String get name {
    switch (this) {
      case TipoMateriaEnum.RESMAT:
        return 'Resistência dos Materiais';
      case TipoMateriaEnum.CALC1:
        return 'Cálculo Diferencial e Intengral I';
      case TipoMateriaEnum.CALC2:
        return 'Cálculo Diferencial e Integral II';
      case TipoMateriaEnum.FT:
        return 'Fenômenos de Transporte';
    }
  }
}
