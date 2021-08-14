import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

enum ArquivosEnum { XML, PDF, DOCS }

extension ArquivosEnumExtension on ArquivosEnum {
  Color get color {
    switch (this) {
      case ArquivosEnum.XML:
        return Colors.green;
      case ArquivosEnum.PDF:
        return Colors.red;
      case ArquivosEnum.DOCS:
        return Colors.blue.shade200;
    }
  }

  Icon get imagemString {
    switch (this) {
      case ArquivosEnum.XML:
        return Icon(FontAwesome5.file_excel, color: Colors.green);
      case ArquivosEnum.PDF:
        return Icon(
          FontAwesome5.file_pdf,
          color: Colors.red,
          size: 32,
        );
      case ArquivosEnum.DOCS:
        return Icon(FontAwesome5.file_word);
    }
  }
}
