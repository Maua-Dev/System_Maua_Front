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

  String get rota {
    switch (this) {
      case MateriaisEnum.LIVROCALCULOI:
        return '/';
      case MateriaisEnum.DOACOES:
        return '/';
      case MateriaisEnum.LIVROFISICAI:
        return '/';
      case MateriaisEnum.CADERNORESMAT:
        return '/';
      case MateriaisEnum.LIVRORESMAT:
        return '/';
    }
  }
}
