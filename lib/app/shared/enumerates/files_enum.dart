import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

enum FilesEnum { XML, PDF, DOCS, URL }

extension FilesEnumExtension on FilesEnum {
  Color get color {
    switch (this) {
      case FilesEnum.XML:
        return Colors.green;
      case FilesEnum.PDF:
        return Colors.red;
      case FilesEnum.DOCS:
        return Colors.blue.shade200;
      case FilesEnum.URL:
        return Colors.grey.shade200;
    }
  }

  Icon get fileIcon {
    switch (this) {
      case FilesEnum.XML:
        return Icon(
          FontAwesome5.file_excel,
          color: Colors.green,
          size: 32,
        );
      case FilesEnum.PDF:
        return Icon(
          FontAwesome5.file_pdf,
          color: Colors.red,
          size: 32,
        );
      case FilesEnum.DOCS:
        return Icon(
          FontAwesome5.file_word,
          color: Colors.blue.shade200,
          size: 32,
        );
      case FilesEnum.URL:
        return Icon(
          FontAwesome5.link,
          color: Colors.grey.shade700,
          size: 32,
        );
    }
  }
}
