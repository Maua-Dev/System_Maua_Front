// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ic_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IcController on IcControllerBase, Store {
  final _$troncoAtom = Atom(name: 'IcControllerBase.tronco');

  @override
  TroncoEnum get tronco {
    _$troncoAtom.reportRead();
    return super.tronco;
  }

  @override
  set tronco(TroncoEnum value) {
    _$troncoAtom.reportWrite(value, super.tronco, () {
      super.tronco = value;
    });
  }

  final _$dadosTroncoAtom = Atom(name: 'IcControllerBase.dadosTronco');

  @override
  List<IcModel> get dadosTronco {
    _$dadosTroncoAtom.reportRead();
    return super.dadosTronco;
  }

  @override
  set dadosTronco(List<IcModel> value) {
    _$dadosTroncoAtom.reportWrite(value, super.dadosTronco, () {
      super.dadosTronco = value;
    });
  }

  final _$getDadosTroncoAsyncAction =
      AsyncAction('IcControllerBase.getDadosTronco');

  @override
  Future<void> getDadosTronco() {
    return _$getDadosTroncoAsyncAction.run(() => super.getDadosTronco());
  }

  final _$IcControllerBaseActionController =
      ActionController(name: 'IcControllerBase');

  @override
  void setTronco(TroncoEnum value) {
    final _$actionInfo = _$IcControllerBaseActionController.startAction(
        name: 'IcControllerBase.setTronco');
    try {
      return super.setTronco(value);
    } finally {
      _$IcControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tronco: ${tronco},
dadosTronco: ${dadosTronco}
    ''';
  }
}
