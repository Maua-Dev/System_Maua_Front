import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/file-view/file_view_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class FileViewPage extends StatefulWidget {
  FileViewPage({Key? key}) : super(key: key);

  @override
  _FileViewPageState createState() => _FileViewPageState();
}

class _FileViewPageState
    extends ModularState<FileViewPage, FileViewController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'PDF',
        ),
        body: Observer(builder: (_) {
          return Center(
              child: controller.isLoading
                  ? Center(child: CircularProgressIndicator())
                  : PDFViewer(document: controller.document));
        }),
      ),
    );
  }
}
