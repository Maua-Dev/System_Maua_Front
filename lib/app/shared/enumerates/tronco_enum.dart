enum TroncoEnum {
  ADM,
  DESIGN,
  CB,
  ALIMENTOS,
  CIVIL,
  COMPUTACAO,
  CA,
  ELETRONICA,
  ELETRICA,
  MECANICA,
  PRODUCAO,
  QUIMICA
}

extension TroncoEnumExtension on TroncoEnum {
  String get nomeTronco {
    switch (this) {
      case TroncoEnum.ADM:
        return 'Administração';
      case TroncoEnum.DESIGN:
        return 'Design';
      case TroncoEnum.CB:
        return 'Engenharia - Ciclo Básico';
      case TroncoEnum.ALIMENTOS:
        return 'Engenharia de Alimentos';
      case TroncoEnum.CIVIL:
        return 'Engenharia Civil';
      case TroncoEnum.COMPUTACAO:
        return 'Engenharia de Computação';
      case TroncoEnum.CA:
        return 'Engenharia de Controle e Automação';
      case TroncoEnum.ELETRONICA:
        return 'Engenharia Eletrônica';
      case TroncoEnum.ELETRICA:
        return 'Engenharia Elétrica';
      case TroncoEnum.MECANICA:
        return 'Engenharia Mecânica';
      case TroncoEnum.PRODUCAO:
        return 'Engenharia de Produção';
      case TroncoEnum.QUIMICA:
        return 'Engenharia Química';
    }
  }
}
