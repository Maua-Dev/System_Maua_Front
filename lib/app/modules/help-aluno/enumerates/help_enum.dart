enum HelpEnum {
  AVISOS,
  VIDEO,
  SOFTWARES,
  BOLSAS,
  INTERCAMBIO,
  ESTAGIO,
  MAPA,
  FAQ
}

extension HelpEnumExtension on HelpEnum {
  String get titulo {
    switch (this) {
      case HelpEnum.AVISOS:
        return 'Avisos';
      case HelpEnum.VIDEO:
        return 'Vídeo Tutorial';
      case HelpEnum.SOFTWARES:
        return 'Softwares disponiveis';
      case HelpEnum.BOLSAS:
        return 'Bolsas de estudo';
      case HelpEnum.INTERCAMBIO:
        return 'Intercambio';
      case HelpEnum.ESTAGIO:
        return 'Estágio';
      case HelpEnum.MAPA:
        return 'Mapa Digital';
      case HelpEnum.FAQ:
        return 'FAQ';
    }
  }

  String get pushNamed {
    switch (this) {
      case HelpEnum.AVISOS:
        return '/avisos';
      case HelpEnum.VIDEO:
        return '';
      case HelpEnum.SOFTWARES:
        return '';
      case HelpEnum.BOLSAS:
        return '';
      case HelpEnum.INTERCAMBIO:
        return '';
      case HelpEnum.ESTAGIO:
        return '';
      case HelpEnum.MAPA:
        return '';
      case HelpEnum.FAQ:
        return '';
    }
  }
}
