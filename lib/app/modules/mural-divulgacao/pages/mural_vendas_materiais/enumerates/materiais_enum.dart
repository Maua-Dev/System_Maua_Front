enum MateriaisEnum {
  LIVROCALCULOI,
  DOACOES,
  LIVROFISICAI,
  CADERNORESMAT,
  LIVRORESMAT
}

extension MateriaisEnumExtension on MateriaisEnum {
  String get nome {
    switch (this) {
      case MateriaisEnum.LIVROCALCULOI:
        return 'Livro Cálculo I';
      case MateriaisEnum.DOACOES:
        return 'Doações';
      case MateriaisEnum.LIVROFISICAI:
        return 'Livro Física I';
      case MateriaisEnum.CADERNORESMAT:
        return 'Caderno Resistêcia dos Materiais';
      case MateriaisEnum.LIVRORESMAT:
        return 'Livro Resistêcia dos Materiais';
    }
  }
}
