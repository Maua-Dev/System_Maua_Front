// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_view_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FileViewController on _FileViewControllerBase, Store {
  final _$documentAtom = Atom(name: '_FileViewControllerBase.document');

  @override
  PDFDocument get document {
    _$documentAtom.reportRead();
    return super.document;
  }

  @override
  set document(PDFDocument value) {
    _$documentAtom.reportWrite(value, super.document, () {
      super.document = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_FileViewControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$setDocumentAsyncAction =
      AsyncAction('_FileViewControllerBase.setDocument');

  @override
  Future<void> setDocument() {
    return _$setDocumentAsyncAction.run(() => super.setDocument());
  }

  final _$_FileViewControllerBaseActionController =
      ActionController(name: '_FileViewControllerBase');

  @override
  void setIsLoading() {
    final _$actionInfo = _$_FileViewControllerBaseActionController.startAction(
        name: '_FileViewControllerBase.setIsLoading');
    try {
      return super.setIsLoading();
    } finally {
      _$_FileViewControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
document: ${document},
isLoading: ${isLoading}
    ''';
  }
}
