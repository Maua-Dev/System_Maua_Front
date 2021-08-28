enum RequerimentoEnum {
  REQUERIMENTO,
  IRMAO,
  PAI,
  MAE,
  CONJUGE,
  FIADOR,
  CONJUGEF
}

extension RequerimentoEnumExtension on RequerimentoEnum {
  String get descricao {
    switch (this) {
      case RequerimentoEnum.REQUERIMENTO:
        return ' • Requerimento';
      case RequerimentoEnum.IRMAO:
        return ' • Ficha - Informaçoes de irmaos ou filhos do aluno';
      case RequerimentoEnum.PAI:
        return ' • Ficha - Pai do aluno ';
      case RequerimentoEnum.MAE:
        return ' • Ficha - Mae do aluno';
      case RequerimentoEnum.CONJUGE:
        return ' • Ficha conjuge do aluno';
      case RequerimentoEnum.FIADOR:
        return ' • Ficha - fiador(a)';
      case RequerimentoEnum.CONJUGEF:
        return ' • Ficha - conjuge do(a) fiador(a)';
    }
  }
}
