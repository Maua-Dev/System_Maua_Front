import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum PdfEnum { XML, PDF, DOCS }

extension PdfEnumExtension on PdfEnum {
  Color get color {
    switch (this) {
      case PdfEnum.XML:
        return Colors.green;
      case PdfEnum.PDF:
        return Colors.red;
        break;
      case PdfEnum.DOCS:
        return Colors.blue.shade200;
    }
  }
}
